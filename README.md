# Turbo Sport

> Turbo Sport is a website that promote healthy live allowing users to create events related to practise sport in groups. The events can be free or paid. The creator of the event has the authorization to approve or decline applicants.

# Features Implemented with Hotwire

- Create and join to events: You can perfomn CRUD operations to the events resource directly in the home page, without the need to been redirected to events#show
- Live Search Bar: It filter in real time based on the provided query
- Upcoming events: It show the list of approved events on the home page directly
- Creators can approve or decline the request of participants to join to an event.
- Others than you can enjoy in out live demo website


## Built With

- _**Ruby 3.1.2**_
- _**Ruby on Rails 7.0.4**_
- _**Devise 4.8.1**_
- _**Turbo Rails 1.1.1**_
- _**Stimulus Rails 1.1.0**_
- _**Pg 1.4.1**_
- _**Cloudinary 1.23.0**_

## Getting Started

### To launch the project locally:

#### Step 1:

- Clone this repo locally using either github desktop or using the clone link provided by the green button on the top right.

- Alternatively, you can just download the complete zip file and extract the folder in your directory.

#### Step 1:

- Set a [Cloudinary](https://cloudinary.com) account and a add cloudinary.yml with your credentials in the `config` folder
- Create the `.env` file in the root of the app, and add your own credentials:

#### Step 2:

- Download all dependencies to use the Project

```bash
> bundle install
> yarn install
> rails db:create
> rails db:migrate
```

#### Step 3:

In the project directory, you can run:

##### `bin/dev`

## Authors

👤 **James Baylor**

- GitHub: [@jamesbaylor](https://github.com/jamesbaylor/)
- LinkedIn: [Jamesbay](https://www.linkedin.com/in/jamesbay/)



## 🤝 Contributing

Contributions, issues, and feature requests are welcome and highly encouraged!
We feel that your input is what helps us grow so you're always Welcome :)

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Thank you to organizer of the Rail Hackaton to allow us to compete and implement wonderful solutions working in teams. 🌥️

## 📝 License

This project is [MIT](https://github.com/rails-hackathon/team-62) licensed.
