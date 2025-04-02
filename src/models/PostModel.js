const pool = require("../config/database");

const getPosts = async () => {
    const result = await pool.query (`SELECT post.*, usuarios.name AS usuario_name 
        FROM post 
        LEFT JOIN usuarios ON post.user_id = usuarios.id`);
}

module.exports = { getPosts };