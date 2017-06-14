var HeeventBrowse = {
    abort: function () {
        throw new Error('this is not an error. Just to abort js');
    },
    onlyUnique: function (value, index, self) {
        return self.indexOf(value) === index;
    },
    locations: [],
    markers: [],
    event: function () {
        // hide map open button
        map_button = document.getElementById('map_action');
        map_button.style.display = 'none';

        var map, geocoder, marker;
        var markers = [];

        var infowindow = new google.maps.InfoWindow();
        var locations = HeeventBrowse.locations;

        // display map
        var map_block = document.getElementById('map');
        var search_block = document.getElementById('search_options');
        if ((map_block !== null && typeof map_block !== 'undefined') &&
            (search_block !== null && typeof search_block !== 'undefined')) {
            map_block.classList.remove('hidden');
            search_block.classList.remove('hidden');
        }

        // google map init
        var latlng = new google.maps.LatLng(37.373, -0.951);
        map = new google.maps.Map(document.getElementById('map'), {
            zoom: 2,
            center: latlng
        });

        geocoder = new google.maps.Geocoder();

        var _loop = function _loop(i) {
            geocoder.geocode({'address': locations[i][1] }, function (results, status) {
                if (status == 'OK') {
                    marker = new google.maps.Marker({
                        position: results[0].geometry.location,
                        map: map
                    });

                    markers.push(marker);

                    // marker's info window
                    google.maps.event.addListener(marker, 'click', function (marker, i) {
                        return function () {
                            infowindow.setContent('<a target="_blank" href="event/'+locations[i][0]+'">'+locations[i][2]+'</a><br>' + locations[i][1]);
                            infowindow.open(map, marker);
                        };
                    }(marker, i));
                }
            });
        };

        // set markers on the map
        for (var j = 0; j < markers.length; j++) {
            markers[j].setMap(map);
        }

        // create markers and push them into markers array (_loop() func above)
        for (var i = 0; i < locations.length; i++) {
            _loop(i);
        }

        // call search func
        HeeventBrowse.searchPlaces(map, geocoder, markers, locations);
    },

    searchPlaces: function (map, geocoder, markers, locations) {
        var self = this;
        var point, distance, marker, keywords;

        var markers = [];
        var result_list = [];

        var infowindow = new google.maps.InfoWindow();

        var button = document.getElementById('action');
        var autocomplete = new google.maps.places.Autocomplete(document.getElementById('target'), {types: ['geocode']});

        if (button !== null && typeof button !== 'undefined') {
            button.addEventListener('click', function () {
                keywords = [];
                keywords.length = 0;
                result_list = [];
                result_list.length = 0;

                // remove primary markers from map
                for (var i = 0; i < markers.length; i++) {
                    markers[i].setMap(null);
                }
                markers.length = 0;

                // every search query define new map, without old markers
                var latlng = new google.maps.LatLng(37.373, -0.951);
                var map = new google.maps.Map(document.getElementById('map'), {
                    zoom: 2,
                    center: latlng
                });

                keywords = document.getElementById('keywords').value;

                // if keywords exist , the search will be carried out only on keywords
                if (keywords !== null && typeof keywords !== 'undefined' && keywords.length > 0) {

                    // each event title will be checked for the content of the each keyword
                    // if it contains keyword, it will be pushed to result_list
                    var keywords = keywords.split(',');
                    for (var m = 0; m < locations.length; m++) {
                        for (var k = 0; k < keywords.length; k++) {
                            keywords[k] = keywords[k].trim();
                            if (locations[m][2].toLowerCase().indexOf(keywords[k].toLowerCase()) >= 0) {
                                result_list.push(locations[m]);
                            }
                        }
                    }

                    result_list = result_list.filter(HeeventBrowse.onlyUnique);

                    // event from the reulst_list will be displayed on the map
                    var _loop_result = function _loop_result(i) {
                        geocoder.geocode({'address':result_list[i][1]}, function (results, status) {
                            if (status == 'OK') {
                                marker = new google.maps.Marker({
                                    position: results[0].geometry.location,
                                    map: map
                                });

                                markers.push(marker);

                                google.maps.event.addListener(marker, 'click', function (marker, i) {
                                    return function () {
                                        infowindow.setContent('<a target="_blank" href="event/'+result_list[i][0]+'">'+result_list[i][2]+'</a><br>' + result_list[i][1]);
                                        infowindow.open(map, marker);
                                    };
                                }(marker, i));
                            }
                        })
                    };

                    if (result_list.length > 0) {
                        for (var i = 0; i < result_list.length; i++) {
                            _loop_result(i);
                        }
                    }
                } else {
                    var input = document.getElementById('target').value;
                    var radius = document.getElementById('distance').value;

                    geocoder.geocode({'address':input}, function (results, status) {
                        if (status == 'OK') {
                            // requested place
                            point = results[0].geometry.location;
                            map.setZoom(6);
                            map.setCenter(point);

                            var _loop = function _loop(i) {
                                geocoder.geocode({ 'address': locations[i][1] }, function (results, status) {
                                    if (status == 'OK') {
                                        // event location
                                        var compare = results[0].geometry.location;
                                        // compute distance between requested place and each event location
                                        distance = google.maps.geometry.spherical.computeDistanceBetween(point, compare, 3956.6);

                                        // set marker on the map, if the distance between requested place and event location less
                                        // then requested distance
                                        if (distance < radius) {
                                            marker = new google.maps.Marker({
                                                position: compare,
                                                map: map
                                            });

                                            // each marker has infowindow on click event
                                            google.maps.event.addListener(marker, 'click', function (marker, i) {
                                                return function () {
                                                    infowindow.setContent('<a target="_blank" href="event/'+locations[i][0]+'">'+locations[i][2]+'</a><br>' + locations[i][1]);
                                                    infowindow.open(map, marker);
                                                };
                                            }(marker, i));

                                            markers.push(marker);


                                            /*if (i == (locations.length - 1)) {

                                             }*/
                                        }
                                    }
                                });
                            };

                            for (var i = 0; i < locations.length; i++) {
                                _loop(i);
                            }
                        } else {
                            console.log('something went wrong');
                        }
                    });
                }


            });
        }
    }
};

var _heb = HeeventBrowse;