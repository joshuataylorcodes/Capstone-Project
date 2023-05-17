# README

# Ezy Set List(Backend)

- Ezy Set List is an app that musicians can use to create set lists for shows/performances. Musicians can create a song bank that they can use to select which ever songs they would like to use in a set. Within minutes, a set list can be created that includes the approximate length of performance, all the infromation about each song for each band member, and a pdf document to print out for performances. Plan effectivly, Practice efficiently.

Band leaders can sign up for an account, login, and immedialty get started on adding songs to there song bank. Once they are done, they can start choosing songs they would like to add to there song bank. once they have chosen all the songs, they can send out the songs selected via email to all the band members along with a pdf document of the set list. The PDF document will include the song names along with the total time it takes to play though all the songs. This can also be sent to venues so they can know the approximate time of the set. users can also delete songs from the song bank easily and update songs if there are ever some changes.

Technologies include Ruby on Rails backend, PostgreSQL database, React.js frontend, and bootstrap styling, 

## Installation

```bash
bundle install
rails db:create db:migrate db:seed
```

## Usage

```bash
rails server
```

You can run all the API tests from the `test` folder by running: 

```bash
rails test
```

## Roadmap

Currently, the backend of my project is complete but the frontend needs a bunch of work. currently, Users can only create a song bank and add songs to it. All the other described functionality needs to be coded.
- Complete designing home page
- add files to view set lists created
- add PDF option
- add update set list option
- add email option
