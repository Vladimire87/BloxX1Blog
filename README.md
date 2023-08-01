# README

https://blox-x1.onrender.com/

Welcome to My Blog! This is a simple blogging platform where users can create articles and engage in discussions through comments. Below, you'll find some key information about the application and its functionalities.
Features

- Create, edit, and publish articles with a title, text, and thumbnail.
- Articles must have a title, text, and thumbnail provided; otherwise, they will not be saved.
- Titles are limited to 140 characters, and article text is limited to 4000 characters to keep the content concise.
- Articles support rich text formatting, allowing for a visually appealing and engaging reading experience.
- Each article can have multiple comments from readers.
- Comments must have an author and body provided; otherwise, they will not be saved.
- Comment bodies are limited to 4000 characters.
- Articles can be displayed with thumbnails in different sizes: a smaller size for the index page (580x330) and a larger size for editing (250x250).

# Models

Article

The Article model represents the main content of the blog. It has the following attributes:

- title: The title of the article (maximum 140 characters).
- text: The main text content of the article (maximum 4000 characters).
- thumbnail: An image attached to the article.
- created_at and updated_at: Timestamps for when the article was created and last updated.

Additionally, the Article model has associations with other models:

- has_one_attached :thumbnail: Enables the attachment of an image to the article.
- has_rich_text :text: Allows for rich text formatting in the article's main text content.
- has_many :comments, dependent: :destroy: Establishes a one-to-many association with comments, where each article can have - multiple comments. If the article is deleted, all associated comments will be destroyed as well.

The Article model also includes three custom methods:

- subject: Returns the title of the article, which can be used to represent the article in a concise manner.
- last_comment: Returns the last comment posted on the article, useful for displaying recent engagement.
- thumbnail_edit: Provides a processed thumbnail variant of the image with a maximum size of 250x250. This is suitable for the editing view of the article.

# Comment

The Comment model represents comments posted by users on articles. It has the following attributes:

- author: The name or identifier of the comment's author.
- body: The main content of the comment (maximum 4000 characters).
- created_at and updated_at: Timestamps for when the comment was created and last updated.

The Comment model has an association with the Article model:

- belongs_to :article: Establishes a one-to-many association, where each comment belongs to a single article.

Getting Started

To run the blog application locally, follow these steps:

- Clone the repository to your local machine.
- Make sure you have Ruby and Rails installed.
- Run bundle install to install the required gems.
- Set up the database with rails db:create and rails db:migrate.
- You can now start the Rails server using rails server.

Feel free to explore, create articles, and engage in discussions through comments!
