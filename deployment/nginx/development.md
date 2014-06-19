# Setting Up Nginx on Virtual Box / Vagrant for local development

## Install Dependencies

List:
	
	Git
	Go
	Redis
	MongoDB
	RabbitMQ

## Vagrant

	vagrant init

## Nginx Configuration

### Create new extension-less file in /etc/nginx/sites-enabled directory

	touch my_application

### Proxy Passing

In **/etc/nginx/sites-enabled/my_application**

	server {
		listen 8001;
		server_name davis.crowdsurge.com;
	}	

### CORS

Partially from **enable-cors.org**

	server {
		...
		
		location / {
			proxy_pass http://localhost:8000
			proxy_pass_header on;
			
			# for CORS
			set $cors "true";
			
			# OPTIONS indicates a CORS pre-flight request
            if ($request_method = 'OPTIONS') {
                set $cors "${cors}options";
            }

            # non-OPTIONS indicates a normal CORS request
            if ($request_method = 'GET') {
                set $cors "${cors}get";
            }
            if ($request_method = 'POST') {
                set $cors "${cors}post";
            }
            
            # if it's a GET or POST, set the standard CORS responses header
            if ($cors = "trueget") {
                # Tells the browser this origin may make cross-origin requests
                # (Here, we echo the requesting origin, which matched the whitelist.)
                add_header 'Access-Control-Allow-Origin' "$http_origin";
                # Tells the browser it may show the response, when XmlHttpRequest.withCredentials=true.
                add_header 'Access-Control-Allow-Credentials' 'true';
                # # Tell the browser which response headers the JS can see, besides the "simple response headers"
                # add_header 'Access-Control-Expose-Headers' 'myresponseheader';
            }
            
            if ($cors = "truepost") {
                # Tells the browser this origin may make cross-origin requests
                # (Here, we echo the requesting origin, which matched the whitelist.)
                add_header 'Access-Control-Allow-Origin' "$http_origin";
                # Tells the browser it may show the response, when XmlHttpRequest.withCredentials=true.
                add_header 'Access-Control-Allow-Credentials' 'true';
                # # Tell the browser which response headers the JS can see, besides the "simple response headers"
                # add_header 'Access-Control-Expose-Headers' 'myresponseheader';
            }
            
            # if it's OPTIONS, then it's a CORS preflight request so respond immediately with no response body
    if ($cors = "trueoptions") {
    	# Tells the browser this origin may make cross-origin requests
        # (Here, we echo the requesting origin, which matched the whitelist.)
        add_header 'Access-Control-Allow-Origin' "$http_origin";
        # in a preflight response, tells browser the subsequent actual request can include user credentials (e.g., cookies)
        add_header 'Access-Control-Allow-Credentials' 'true';
        
        # Tell browser to cache this pre-flight info for 20 days
        add_header 'Access-Control-Max-Age' 1728000;
        
        # We should only need this header for non-simple requests
        # methods (e.g., DELETE), or custom request methods (e.g., XMODIFY)
        add_header 'Access-Control-Allow-Methods' 'GET, POST, OPTIONS';
        
        add_header 'Access-Control-Allow-Headers' 'Authorization,Content-Type,Accept,Origin,User-Agent,DNT,Cache-Control,X-Mx-ReqToken,Keep-Alive,X-Requested-With,If-Modified-Since';

        # build entire response to the preflight request
        # no body in this response
        add_header 'Content-Length' 0;
        # (should not be necessary, but included for non-conforming browsers)
        add_header 'Content-Type' 'text/plain charset=UTF-8';
        # indicate successful return with no content
        return 204;
        
		}
	}

### Map IP host name in hostfile located in Mac OS aka file /etc/hosts

Add:

	127.0.0.1 localhost
	127.0.0.1 davis.crowdsurge.com

## Port Fowarding

In Vagrantfile:

	# nginx
	config.vm.network "forwarded_port", guest: 8001, host: 8000
	# redis
	config.vm.network "forwarded_port", guest: 6379, host: 6379
	# mongodb
	config.vm.network "forwarded_port", guest: 27017, host: 27017


## First Application Server

To start development server in application directory run:

	PORT=8000 go run server.go -config config/dev.yaml

**Notice**: the **port** specified needs to correspond to host port from **Vagrantfile**

## FLow Chart

![Flow Chart Not Available](./images/flow.jpg "Flow Chart") 