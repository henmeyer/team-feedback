# Team Feedback Application

A Rails application for managing team feedback and performance reviews within organizations. This application allows users to send and receive feedback, manage teams, and track feedback status across different accounts.

## Features

- **Multi-tenant Architecture**: Support for multiple accounts/organizations
- **Team Management**: Create and manage teams within accounts
- **User Management**: Add users to accounts and teams
- **Feedback System**: Send feedback to users or teams with status tracking
- **Role-based Access**: Account owners, team owners, and regular users
- **Feedback Status Tracking**: Track feedback through different states

## Tech Stack

- **Ruby**: 3.x
- **Rails**: 8.0
- **Database**: PostgreSQL (recommended) or SQLite
- **Authentication**: Devise (recommended)

## Prerequisites

- Ruby 3.0 or higher
- Rails 8.0
- PostgreSQL (recommended) or SQLite
- Node.js and Yarn (for asset compilation)

## Installation

1. **Clone the repository**

   ```bash
   git clone <repository-url>
   cd team-feedback
   ```

2. **Install Ruby dependencies**

   ```bash
   bundle install
   ```

3. **Set up the database**

   ```bash
   rails db:create
   rails db:migrate
   ```

4. **Install JavaScript dependencies** (if using importmaps or webpacker)

   ```bash
   yarn install
   ```

5. **Set up environment variables**

   ```bash
   cp .env.example .env
   # Edit .env with your configuration
   ```

6. **Start the server**

   ```bash
   rails server
   ```

   Visit `http://localhost:3000` to see the application.

## Database Schema

The application uses the following main entities:

- **Accounts**: Organizations or companies using the system
- **Users**: Individual users who can send/receive feedback
- **Teams**: Groups within accounts for organizing users
- **Feedbacks**: Feedback messages with status tracking
- **AccountUsers**: Many-to-many relationship between accounts and users
- **TeamUsers**: Many-to-many relationship between teams and users

## Usage

### Creating an Account

1. Sign up as the first user
2. Create an account for your organization
3. Add team members to your account

### Managing Teams

1. Create teams within your account
2. Assign team owners
3. Add users to teams

### Sending Feedback

1. Navigate to the feedback section
2. Choose a recipient (user or team)
3. Write your feedback with a title and content
4. Submit the feedback

### Feedback Status

Feedback can have different statuses:

- **Draft**: Work in progress
- **Submitted**: Sent to recipient
- **Reviewed**: Recipient has reviewed
- **Completed**: Feedback process finished

## Development

### Running Tests

```bash
# Run all tests
rails test

# Run specific test file
rails test test/models/user_test.rb

# Run tests with coverage
COVERAGE=true rails test
```

### Code Quality

```bash
# Run RuboCop
bundle exec rubocop

# Run Brakeman for security
bundle exec brakeman

# Run bundle audit
bundle exec bundle-audit
```

### Database

```bash
# Reset database
rails db:reset

# Run migrations
rails db:migrate

# Rollback migrations
rails db:rollback

# Seed database
rails db:seed
```

## API Endpoints

The application provides RESTful API endpoints for all major entities:

- `GET /api/accounts` - List accounts
- `POST /api/accounts` - Create account
- `GET /api/teams` - List teams
- `POST /api/teams` - Create team
- `GET /api/feedbacks` - List feedback
- `POST /api/feedbacks` - Create feedback

## Configuration

### Environment Variables

Create a `.env` file with the following variables:

```env
# Database
DATABASE_URL=postgresql://localhost/team_feedback_development

# Application
RAILS_ENV=development
SECRET_KEY_BASE=your_secret_key_here

# Email (if using Action Mailer)
SMTP_HOST=smtp.gmail.com
SMTP_PORT=587
SMTP_USERNAME=your_email@gmail.com
SMTP_PASSWORD=your_app_password
```

### Database Configuration

The application supports both PostgreSQL and SQLite:

- **PostgreSQL** (recommended for production): Update `config/database.yml`
- **SQLite** (good for development): Default Rails configuration

## Deployment

### Heroku

```bash
# Create Heroku app
heroku create your-app-name

# Add PostgreSQL addon
heroku addons:create heroku-postgresql:mini

# Deploy
git push heroku main

# Run migrations
heroku run rails db:migrate
```

### Docker

```bash
# Build image
docker build -t team-feedback .

# Run container
docker run -p 3000:3000 team-feedback
```

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support

For support and questions:

- Create an issue in the repository
- Contact the development team
- Check the documentation in the `/docs` folder

## Roadmap

- [ ] Email notifications for feedback
- [ ] Feedback templates
- [ ] Advanced reporting and analytics
- [ ] Mobile application
- [ ] Integration with HR systems
- [ ] Anonymous feedback option
- [ ] Feedback scheduling and reminders
