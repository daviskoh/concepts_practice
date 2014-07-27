# MongoDB Workshop

## Overview

**Pros**

- Optmized for read-heavy

**Cons**

- Not Optimized for write-heavy

## Types

Boolean  
Number  
String  
Null  
Object  
Array  


## Structure

Database -> Collection -> Document

Document - JSON Object

	{
		name: "Bob",
		friends: [
	  		"Bro1",
	  		"Bro2"
		]
	}

Memory allocated for managemnt of each database by default

	> show dbs
	admin                (empty)
	auth                 0.078GB
	mongoclass           0.078GB

## Basic Commands

Create Database

	> use database

Create Collection

	> db.collectionName.insert({})

## Mongo _id

## Insert

**Insert Multiple** - array of objects

	> db.users.insert([{name: 'Bob'}, {name: 'Sue'}])

## Querying

**Nested Objects**

Create

	> db.users.insert({name: 'Joe', birthday: {year: 1980, month, 12, day: 4}})

To query for nested criteria

	> db.users.find({'birthday.year': 1980})

**Remove**

Optional remove 1

	> db.users.remove({name: 'Joe'}, true)

## Advanced Querying

### Common Operators

$gt: >  
$lt: <  
$gte: >=  
$lte: <=  

Operators are prefixed by $

For ex. to get books w/ year > 1950

	> db.books.find({ year: { $gt: 1950 } })

Multi-Match:

Matches one of values in array

	$in

ex:

	> db.users.find({ field: { $in: ['Bob', 'Frank', 'Sal'] } })
	
### Update

**Note**: updates only 1 by default unless specify **{multi: true}**

	> db.collName.update(queryObject, updateObject, {multi: true})

$set - set value
	
	> db.books.update({ name: 'Bob' }, { $set: { age: 20 } })

$push - push values into array

	{ name: 'Bob', friends: ['Sal'] }
	> db.books.update({ name: 'Bob'}, $push: { friends: 'Frank' })

$inc - increment

### Sort

Ascending: 1

	> db.users.find({ age: { $get: { age: 22 } } }).sort({ age: 1 })

Descending: -1

	> db.users.find({ age: { $get: { age: 22 } } }).sort({ age: -1 })

## Indexes

index - copy all data, organized in way that is optmized for querying

Mongo indexes what it can

**Note**: if query / read running slowly, likely beacuse attribute is not indexed

**Note**: **Only** attribute indexed by Mongo is **_id**

To index:

	db.collName.ensureIndex({ indexedField: indexOrder })

**Pros** of Indexing

- reads improved dramatically

**Cons** of Indexing

- take up more memory space because replicating data
- writes slowed down because adding to index each time as well


## Sharding

**Note**: Want all data to live in memory if possible

When pulling database, check 1st if it is cached into working set before looking in disk because retrieving from disk is expensive for memory

Sharding - process of splitting collections across servers

Shard on a given field i.e. *name*

## Replication

Replica set - cluster of servers that all copy each other's data

1 server is primary at a given point, others are secondaries

If primary goes down, a secondary steps up to assume role

### Load JavaScript files

	> load(path)

### Map Reduce

map - extract desired data & format to different
reduce = bind data

	> db.users.mapReduce(
		mapFunction,
		reduceFunction
	)

