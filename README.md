# Spotify Track Recommendations Based on Playlists

This app will be able to take a users playlists, recommend tracks, and allow the user to vote on the recommended tracks to get tracks more like what is recommended or less like the recommendation. Built with Ruby on Rails.

### Week by Week Goals.

##### Week 1:

* Be able to add tracks and playlists locally.

* Route to their own pages with information showing.

##### Week 2:

* Add User Auth

* TBD

##### Week 3:

* TBD

##### Week 4:

* TBD

### Installation

Open Terminal and clone the repository.  
```
$ cd Desktop
$ git clone https://github.com/noahramey/spotify_recommendations.git
```

Navigate to the repository and bundle Ruby gems:
```
$ cd spotify_recommendations
$ bundle install
```

Make sure Postgres is running on your local machine, then setup the database:
```
$ rails db:setup db:test:prepare
```

Start the Rails server.
```
$ rails s
```

Open your browser and navigate to `localhost:3000`.


License
-------

MIT License. Copyright &copy; 2016 "Noah Ramey"
