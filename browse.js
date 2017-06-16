var HeeventBrowse = {
    onlyUnique: function (value, index, self) {
        return self.indexOf(value) === index;
    },
    options: '',
    cancel: '',
    locations: [],
    edited_locations: [],
    markers: [],
    map: '',
    geocoder: '',
    infowindow: '',

    toggleAdvSearch: function () {
        var target, distance, trigger, blocks, added_blocks;

        var self = this;

        target = document.getElementById('target');
        distance = document.getElementById('distance');
        trigger = document.getElementById('options');

        if ((target !== null && typeof target !== 'undefined') &&
            (distance !== null && typeof distance !== 'undefined')) {
            target.classList.toggle('hidden');
            distance.classList.toggle('hidden');

            if (trigger.innerHTML == self.cancel) {
                blocks = document.getElementById('blocks');
                added_blocks = document.getElementById('added_blocks');

                if (added_blocks !== null && typeof added_blocks !== 'undefined') {
                    added_blocks.parentNode.removeChild(added_blocks);
                    self.edited_locations = [];
                    self.edited_locations.length = 0;

                    document.getElementById('target').value = "";
                    document.getElementById('distance').value = 20;
                    if (blocks !== null && typeof blocks !== 'undefined') {
                        blocks.style.display = 'block';
                    }
                }
            }

            trigger.innerHTML = (trigger.innerHTML == self.cancel) ? self.options : self.cancel;
        }
    },
    init: function () {
        var button_blocks,
            button_map,
            blocks,
            map_block,
            search_type,
            latlng,
            self;

        self = this;

        button_blocks = document.getElementById('view_blocks');
        button_map = document.getElementById('view_map');

        blocks = document.getElementById('blocks');
        map_block = document.getElementById('map');
        search_type = document.getElementById('search_type');

        if (button_blocks !== null && typeof button_blocks !== 'undefined') {
            button_blocks.addEventListener('click', function () {
                if ((blocks !== null && typeof blocks !== 'undefined') &&
                    (map_block !== null && typeof map_block !== 'undefined')) {
                    blocks.classList.remove('hidden');
                    map_block.classList.add('hidden');

                    var added_blocks = document.getElementById('added_blocks');
                    if (added_blocks !== null && typeof added_blocks !== 'undefined') {
                        added_blocks.classList.remove('hidden');
                    }

                    if (search_type !== null && typeof search_type !== 'undefined') {
                        search_type.value = 'blocks';
                    }

                    if (self.edited_locations.length > 0) {
                        var req_id = [];

                        for (var r = 0; r < self.edited_locations.length; r++) {
                            req_id.push(self.edited_locations[r][0]);
                        }

                        var request = new Request.HTML({
                            url: 'heevents/index/response/data/' + req_id + '?format=html',
                            method: 'get',
                            onRequest: function () {
                                var loading = document.getElementById('loading');
                                if (loading !== null && typeof loading !== 'undefined') {
                                    loading.parentNode.removeChild(loading);
                                }

                                var temp = new Element('span#loading', {'text': ' Loading...'});
                                var element = document.getElementById('options');
                                temp.inject(element, 'after');
                            },
                            onSuccess: function (var1, var2, responseText) {
                                var loading = document.getElementById('loading');
                                if (loading !== null && typeof loading !== 'undefined') {
                                    loading.parentNode.removeChild(loading);
                                }
                                var added_blocks = document.getElementById('added_blocks');
                                if (added_blocks !== null && typeof added_blocks !== 'undefined') {
                                    added_blocks.parentNode.removeChild(added_blocks);
                                }
                                document.getElementById('blocks').style.display = 'none';
                                var temp = new Element('ul.heevents_browse.events_browse#added_blocks', {'html': responseText});
                                var element = document.getElementById('events-horizont');
                                temp.inject(element, 'after');
                            },
                            onFailure: function () {}
                        });
                        request.send();
                    }
                }
            });
        }

        if (button_map !== null && typeof button_map !== 'undefined') {
            button_map.addEventListener('click', function () {
                if ((blocks !== null && typeof blocks !== 'undefined') &&
                    (map_block !== null && typeof map_block !== 'undefined')) {
                    map_block.classList.remove('hidden');
                    blocks.classList.add('hidden');

                    var added_blocks = document.getElementById('added_blocks');
                    if (added_blocks !== null && typeof added_blocks !== 'undefined') {
                        added_blocks.classList.add('hidden');
                    }

                    if (search_type !== null && typeof search_type !== 'undefined') {
                        search_type.value = 'map';
                    }

                    self.geocoder = new google.maps.Geocoder;
                    self.infowindow = new google.maps.InfoWindow();
                    latlng = new google.maps.LatLng(37.373, -0.951);
                    self.map = new google.maps.Map(document.getElementById('map'), {
                        zoom: 2,
                        center: latlng
                    });

                    if (self.edited_locations.length > 0) {
                        var _loop_result = function _loop_result(i) {
                            self.geocoder.geocode({'address':self.edited_locations[i][1]}, function (results, status) {
                                if (status == 'OK') {
                                    marker = new google.maps.Marker({
                                        position: results[0].geometry.location,
                                        map: self.map
                                    });

                                    self.markers.push(marker);

                                    google.maps.event.addListener(marker, 'click', function (marker, i) {
                                        return function () {
                                            self.infowindow.setContent('<a target="_blank" href="event/'+self.edited_locations[i][0]+'">'+self.edited_locations[i][2]+'</a><br>' + self.edited_locations[i][1]);
                                            self.infowindow.open(self.map, marker);
                                        };
                                    }(marker, i));
                                }
                            });
                        };

                        if (self.edited_locations.length > 0) {
                            for (var l = 0; l < self.edited_locations.length; l++) {
                                _loop_result(l);
                            }
                        }
                    } else {
                        var _loop = function _loop(i) {
                            self.geocoder.geocode({'address': self.locations[i][1] }, function (results, status) {
                                if (status == 'OK') {
                                    marker = new google.maps.Marker({
                                        position: results[0].geometry.location,
                                        map: self.map
                                    });

                                    self.markers.push(marker);

                                    // marker's info window
                                    google.maps.event.addListener(marker, 'click', function (marker, i) {
                                        return function () {
                                            self.infowindow.setContent('<a target="_blank" href="event/'+self.locations[i][0]+'">'+self.locations[i][2]+'</a><br>' + self.locations[i][1]);
                                            self.infowindow.open(map, marker);
                                        };
                                    }(marker, i));
                                }
                            });
                        };

                        // create markers and push them into markers array (_loop() func above)
                        for (var i = 0; i < self.locations.length; i++) {
                            _loop(i);
                        }

                        // set markers on the map
                        for (var j = 0; j < self.markers.length; j++) {
                            self.markers[j].setMap(map);
                        }
                    }
                }
            });
        }
    },

    search: function () {
        var search_type,
            self,
            latlng,
            point,
            compare,
            req_distance,
            distance,
            keywords,
            key_list,
            target,
            marker,
            autocomplete;

        self = this;

        keywords = [];
        keywords.length = 0;
        self.edited_locations = [];
        self.edited_locations.length = 0;
        keywords = document.getElementById('keywords');

        if (keywords !== null && typeof keywords !== 'undefined') {
            keywords.oninput = function () {
                self.edited_locations = [];
                self.edited_locations.length = 0;
                if (keywords.value.length > 0) {
                    latlng = new google.maps.LatLng(37.373, -0.951);
                    self.map = (typeof self.map !== 'string') ? self.map : new google.maps.Map(document.getElementById('map'), {zoom: 2,  center: latlng});
                    self.map.setZoom(2);
                    self.map.setCenter(latlng);
                    for (var i = 0; i < self.markers.length; i++) {
                        self.markers[i].setMap(null);
                    }
                    self.markers.length = 0;

                    key_list = keywords.value.split(',');

                    // each event title will be checked for the content of the each keyword
                    // if it contains keyword, it will be pushed to the self.edited_locations
                    for (var m = 0; m < self.locations.length; m++) {
                        for (var k = 0; k < key_list.length; k++) {
                            key_list[k] = key_list[k].trim();
                            if (self.locations[m][2].toLowerCase().indexOf(key_list[k].toLowerCase()) >= 0) {
                                self.edited_locations.push(self.locations[m]);
                            }
                        }
                    }

                    self.edited_locations = self.edited_locations.filter(self.onlyUnique);

                    search_type = document.getElementById('search_type');

                    self.geocoder = (typeof self.geocoder !== 'string') ? self.geocoder : new google.maps.Geocoder();
                    self.infowindow = (typeof self.infowindow !== 'string') ? self.infowindow : new google.maps.InfoWindow();

                    latlng = new google.maps.LatLng(37.373, -0.951);
                    self.map = (typeof self.map !== 'string') ? self.map : new google.maps.Map(document.getElementById('map'), {zoom: 2,  center: latlng});

                    if (search_type !== null && typeof search_type !== 'undefined' && search_type.value == 'blocks') {
                        // for blocks ajax request to php controller
                        var req_id = [];

                        if (self.edited_locations.length > 0) {
                            for (var r = 0; r < self.edited_locations.length; r++) {
                                req_id.push(self.edited_locations[r][0]);
                            }
                        }

                        var request = new Request.HTML({
                            url: 'heevents/index/response/data/' + req_id + '?format=html',
                            method: 'get',
                            onRequest: function () {
                                var loading = document.getElementById('loading');
                                if (loading !== null && typeof loading !== 'undefined') {
                                    loading.parentNode.removeChild(loading);
                                }

                                var temp = new Element('span#loading', {'text': ' Loading...'});
                                var element = document.getElementById('options');
                                temp.inject(element, 'after');
                            },
                            onSuccess: function (var1, var2, responseText) {
                                var loading = document.getElementById('loading');
                                if (loading !== null && typeof loading !== 'undefined') {
                                    loading.parentNode.removeChild(loading);
                                }
                                var added_blocks = document.getElementById('added_blocks');
                                if (added_blocks !== null && typeof added_blocks !== 'undefined') {
                                    added_blocks.parentNode.removeChild(added_blocks);
                                }
                                document.getElementById('blocks').style.display = 'none';
                                var temp = new Element('ul.heevents_browse.events_browse#added_blocks', {'html': responseText});
                                var element = document.getElementById('events-horizont');
                                temp.inject(element, 'after');
                            },
                            onFailure: function () {}
                        });
                        request.send();
                    } else if (search_type !== null && typeof search_type !== 'undefined' && search_type.value == 'map') {
                        var _loop_result = function _loop_result(i) {
                            self.geocoder.geocode({'address':self.edited_locations[i][1]}, function (results, status) {
                                if (status == 'OK') {
                                    marker = new google.maps.Marker({
                                        position: results[0].geometry.location,
                                        map: self.map
                                    });

                                    self.markers.push(marker);

                                    google.maps.event.addListener(marker, 'click', function (marker, i) {
                                        return function () {
                                            self.infowindow.setContent('<a target="_blank" href="event/'+self.edited_locations[i][0]+'">'+self.edited_locations[i][2]+'</a><br>' + self.edited_locations[i][1]);
                                            self.infowindow.open(self.map, marker);
                                        };
                                    }(marker, i));
                                }
                            });
                        };

                        if (self.edited_locations.length > 0) {
                            for (var l = 0; l < self.edited_locations.length; l++) {
                                _loop_result(l);
                            }
                        }
                    } else { console.log('search is crashed'); }

                    // events from the edited_locations will be displayed on the map
                } else {
                    var added_blocks, blocks;
                    added_blocks = document.getElementById('added_blocks');
                    blocks = document.getElementById('blocks');

                    if (added_blocks !== null && typeof added_blocks !== 'undefined') {
                        added_blocks.parentNode.removeChild(added_blocks);
                        blocks.style.display = 'block';
                    }
                }
            };
        }

        if (keywords !== null && typeof keywords !== 'undefined' && keywords.value.length == 0) {
            target = document.getElementById('target');
            req_distance = document.getElementById('distance');

            self.geocoder = (typeof self.geocoder !== 'string') ? self.geocoder : new google.maps.Geocoder();
            self.infowindow = (typeof self.infowindow !== 'string') ? self.infowindow : new google.maps.InfoWindow();

            if ((target !== null && typeof target !== 'undefined') &&
                (req_distance !== null && typeof req_distance !== 'undefined')) {
                autocomplete = new google.maps.places.Autocomplete(target);

                autocomplete.addListener('place_changed', function () {
                    var check = document.getElementById('keywords');
                    if (autocomplete.getPlace().geometry && check.value.length == 0) {
                        for (var j = 0; j < self.markers.length; j++) {
                            self.markers[j].setMap(null);
                        }
                        self.markers.length = 0;

                        self.edited_locations = [];
                        self.edited_locations.length = 0;

                        point = autocomplete.getPlace().geometry.location;
                        if (!document.getElementById('map').classList.contains('hidden')) {
                            self.map.setZoom(6);
                            self.map.setCenter(point);
                        }

                        var _loop2 = function _loop2(i) {
                            self.geocoder = (self.geocoder !== null && typeof self.geocoder !== 'string') ? self.geocoder : new google.maps.Geocoder();
                            self.geocoder.geocode({'address': self.locations[i][1]}, function (results, status) {
                                if (status == 'OK') {
                                    // event location
                                    compare = results[0].geometry.location;

                                    // compute distance between requested place and each event location
                                    distance = google.maps.geometry.spherical.computeDistanceBetween(point, compare, 3956.6);

                                    // set marker on the map, if the distance between requested place
                                    // and event location is less the requested_distance
                                    if (distance <= req_distance.value) {
                                        self.edited_locations.push(self.locations[i]);
                                    }

                                    if (i == self.locations.length - 1) {
                                        search_type = document.getElementById('search_type');

                                        self.geocoder = (typeof self.geocoder !== 'string') ? self.geocoder : new google.maps.Geocoder();
                                        self.infowindow = (typeof self.infowindow !== 'string') ? self.infowindow : new google.maps.InfoWindow();

                                        latlng = new google.maps.LatLng(37.373, -0.951);
                                        self.map = (typeof self.map !== 'string') ? self.map : new google.maps.Map(document.getElementById('map'), {zoom: 2,  center: latlng});

                                        if (search_type !== null && typeof search_type !== 'undefined' && search_type.value == 'blocks') {
                                            // for blocks ajax request to php controller
                                            var req_id = [];

                                            if (self.edited_locations.length > 0) {
                                                for (var r = 0; r < self.edited_locations.length; r++) {
                                                    req_id.push(self.edited_locations[r][0]);
                                                }
                                            }

                                            var request = new Request.HTML({
                                                url: 'heevents/index/response/data/' + req_id + '?format=html',
                                                method: 'get',
                                                onRequest: function () {
                                                    var loading = document.getElementById('loading');
                                                    if (loading !== null && typeof loading !== 'undefined') {
                                                        loading.parentNode.removeChild(loading);
                                                    }

                                                    var temp = new Element('span#loading', {'text': ' Loading...'});
                                                    var element = document.getElementById('options');
                                                    temp.inject(element, 'after');
                                                },
                                                onSuccess: function (var1, var2, responseText) {
                                                    var loading = document.getElementById('loading');
                                                    if (loading !== null && typeof loading !== 'undefined') {
                                                        loading.parentNode.removeChild(loading);
                                                    }
                                                    var added_blocks = document.getElementById('added_blocks');
                                                    if (added_blocks !== null && typeof added_blocks !== 'undefined') {
                                                        added_blocks.parentNode.removeChild(added_blocks);
                                                    }
                                                    document.getElementById('blocks').style.display = 'none';
                                                    var temp = new Element('ul.heevents_browse.events_browse#added_blocks', {'html': responseText});
                                                    var element = document.getElementById('events-horizont');
                                                    temp.inject(element, 'after');
                                                },
                                                onFailure: function () {}
                                            });
                                            request.send();
                                        } else if (search_type !== null && typeof search_type !== 'undefined' && search_type.value == 'map') {

                                            var _loop_result = function _loop_result(i) {
                                                self.geocoder.geocode({'address':self.edited_locations[i][1]}, function (results, status) {
                                                    if (status == 'OK') {
                                                        marker = new google.maps.Marker({
                                                            position: results[0].geometry.location,
                                                            map: self.map
                                                        });

                                                        self.markers.push(marker);

                                                        google.maps.event.addListener(marker, 'click', function (marker, i) {
                                                            return function () {
                                                                self.infowindow.setContent('<a target="_blank" href="event/'+self.edited_locations[i][0]+'">'+self.edited_locations[i][2]+'</a><br>' + self.edited_locations[i][1]);
                                                                self.infowindow.open(self.map, marker);
                                                            };
                                                        }(marker, i));
                                                    }
                                                });
                                            };

                                            if (self.edited_locations.length > 0) {
                                                for (var l = 0; l < self.edited_locations.length; l++) {
                                                    _loop_result(l);
                                                }
                                            }
                                        } else { console.log('search is crashed'); }
                                    }
                                }
                            });
                        };

                        for (var i = 0; i < self.locations.length; i++) {
                            _loop2(i);
                        }
                    }
                });

                req_distance.addEventListener('change', function () {
                    var check = document.getElementById('keywords');
                    if (autocomplete.getPlace().geometry &&
                        check.value.length == 0) {
                        for (var j = 0; j < self.markers.length; j++) {
                            self.markers[j].setMap(null);
                        }
                        self.markers.length = 0;

                        self.edited_locations = [];
                        self.edited_locations.length = 0;

                        point = autocomplete.getPlace().geometry.location;
                        self.map.setZoom(6);
                        self.map.setCenter(point);

                        var _loop2 = function _loop2(i) {
                            self.geocoder.geocode({'address': self.locations[i][1]}, function (results, status) {
                                if (status == 'OK') {
                                    // event location
                                    compare = results[0].geometry.location;

                                    // compute distance between requested place and each event location
                                    distance = google.maps.geometry.spherical.computeDistanceBetween(point, compare, 3956.6);

                                    // set marker on the map, if the distance between requested place
                                    // and event location is less the requested_distance
                                    if (distance <= req_distance.value) {
                                        self.edited_locations.push(self.locations[i]);
                                    }

                                    if (i == self.locations.length - 1) {
                                        search_type = document.getElementById('search_type');

                                        self.geocoder = (typeof self.geocoder !== 'string') ? self.geocoder : new google.maps.Geocoder();
                                        self.infowindow = (typeof self.infowindow !== 'string') ? self.infowindow : new google.maps.InfoWindow();

                                        latlng = new google.maps.LatLng(37.373, -0.951);
                                        self.map = (typeof self.map !== 'string') ? self.map : new google.maps.Map(document.getElementById('map'), {zoom: 2,  center: latlng});

                                        if (search_type !== null && typeof search_type !== 'undefined' && search_type.value == 'blocks') {
                                            // for blocks ajax request to php controller
                                            var req_id = [];

                                            if (self.edited_locations.length > 0) {
                                                for (var r = 0; r < self.edited_locations.length; r++) {
                                                    req_id.push(self.edited_locations[r][0]);
                                                }
                                            }

                                            var request = new Request.HTML({
                                                url: 'heevents/index/response/data/' + req_id + '?format=html',
                                                method: 'get',
                                                onRequest: function () {
                                                    var loading = document.getElementById('loading');
                                                    if (loading !== null && typeof loading !== 'undefined') {
                                                        loading.parentNode.removeChild(loading);
                                                    }

                                                    var temp = new Element('span#loading', {'text': ' Loading...'});
                                                    var element = document.getElementById('options');
                                                    temp.inject(element, 'after');
                                                },
                                                onSuccess: function (var1, var2, responseText) {
                                                    var loading = document.getElementById('loading');
                                                    if (loading !== null && typeof loading !== 'undefined') {
                                                        loading.parentNode.removeChild(loading);
                                                    }
                                                    var added_blocks = document.getElementById('added_blocks');
                                                    if (added_blocks !== null && typeof added_blocks !== 'undefined') {
                                                        added_blocks.parentNode.removeChild(added_blocks);
                                                    }
                                                    document.getElementById('blocks').style.display = 'none';
                                                    var temp = new Element('ul.heevents_browse.events_browse#added_blocks', {'html': responseText});
                                                    var element = document.getElementById('events-horizont');
                                                    temp.inject(element, 'after');
                                                },
                                                onFailure: function () {}
                                            });
                                            request.send();
                                        } else if (search_type !== null && typeof search_type !== 'undefined' && search_type.value == 'map') {

                                            var _loop_result = function _loop_result(i) {
                                                self.geocoder.geocode({'address':self.edited_locations[i][1]}, function (results, status) {
                                                    if (status == 'OK') {
                                                        marker = new google.maps.Marker({
                                                            position: results[0].geometry.location,
                                                            map: self.map
                                                        });

                                                        self.markers.push(marker);

                                                        google.maps.event.addListener(marker, 'click', function (marker, i) {
                                                            return function () {
                                                                self.infowindow.setContent('<a target="_blank" href="event/'+self.edited_locations[i][0]+'">'+self.edited_locations[i][2]+'</a><br>' + self.edited_locations[i][1]);
                                                                self.infowindow.open(self.map, marker);
                                                            };
                                                        }(marker, i));
                                                    }
                                                });
                                            };

                                            if (self.edited_locations.length > 0) {
                                                for (var l = 0; l < self.edited_locations.length; l++) {
                                                    _loop_result(l);
                                                }
                                            }
                                        } else { console.log('search is crashed'); }
                                    }
                                }
                            });
                        };

                        for (var i = 0; i < self.locations.length; i++) {
                            _loop2(i);
                        }
                    }
                });
            }
        }
    },
};

var _heb = HeeventBrowse;