function findUser(name) {
    // Find one user document by the user's name
    return db.users.findOne({
        name: name
    });
}

function insertUser(name) {
    // TODO - Insert a user with:
    //	The user's name, 
    //	An empty friends array, 
    //	An empty posts array,
    //	And a field called "enabled" set to true
    return db.users.insert({
        name: name
    });
}

function updateUserName(oldName, newName) {
    // TODO - Change a user's name (query for the old name, set the new one)
    return db.users.update({
        name: oldName
    }, {
        $set: {
            name: newName
        }
    });
}

function disableUser(name) {
    // TODO - Set the user's "enabled" field to false
    return db.users.update({
        enabled: false
    });
}

function enableUser(name) {
    // TODO - Set the user's "enabled" field to true
    return db.users.update({
        enabled: true
    });
}

function addFriendToUser(name, friendName) {
    // TODO - Push a friend name onto a user's list of friends
    return db.users.update({
        name: name
    }, {
        $push: {
            friends: friendName
        }
    });
}

function deleteUser(name) {
    // TODO - Remove the user with the given name
    return db.users.remove({
        name: name
    });
}

function totalUserCount() {
    // TODO - Return the number of users in total
    return db.user.count();
}

function addPost(userName, title, text) {
    // TODO - Create a post object with the necessary data (title, text, date), and push it onto a user's posts array.
    var postDate = new Date();
    var postObj = {
        title: title,
        text: text,
        date: postDate
    };

    return db.users.update({
    	name: userName
    }, {
    	$push: {
    		posts: postObj
    	}
    });
}

function findAllUsersAlphabetically() {
    // TODO - Return a cursor to a list of users sorted alphabetically
    return db.users.find().sort({ name: 1 });
}
