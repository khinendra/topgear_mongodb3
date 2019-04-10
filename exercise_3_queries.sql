
1. db.restaurants.find({$or: [ {'name':/^Wil/},{'cuisine':{'$nin':['Chinese','American ']}}]},{restaurant_id:1,name:1,borough:1,cuisine:1});

2. db.restaurants.find({ $and: [{'grades.score':{'$gt':11}}, {'grades.grade':'A'},{'grades.date':ISODate('2014-08-11T00:00:00Z')}]},
{restaurant_id:1, name:1, 'grades.grade':1});

3. db.restaurants.find({ $and: [{'grades.1.score':9}, {'grades.1.grade':'A'},{'grades.1.date':ISODate('2014-08-11T00:00:00Z')}]},
{restaurant_id:1, name:1, 'grades.grade':1});

4. db.restaurants.find({"address.coord.1": {$gt : 42, $lte : 52}},{"restaurant_id" : 1,"name":1,"address":1,"coord":1});

5. db.restaurants.find().sort({"name":1});

6. db.restaurants.find().sort({"name":-1});

7. db.restaurants.find().sort({"cuisine":1,"borough" : -1,});

8. db.restaurants.find( {"address.street" :  { $exists : true } } );

9. db.restaurants.find({'address.coord':{$type:1}});

10. db.restaurants.find({'grades.score':{$mod:[7,0]}},{restaurant_id:1,name:1,grades:1});

11. db.restaurants.find({'name':/mon/},{name:1,borough:1,'address.coord':1,cuisine:1});

12. db.restaurants.find({'name':/^Mad/},{name:1,borough:1,'address.coord':1,cuisine:1});
