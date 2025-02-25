const {v4: uuid4} = require('uuid');

class Post {
    constructor(userId, title, description, image) {
        this.id = uuid4();
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.image = image;
    }
}

module.exports = Post;