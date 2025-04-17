const pool = require("../config/database");

const getPosts = async () => {
    const result = await pool.query (
    `SELECT 
        post.id,
        post.title,
        post.content,
        post.photo_post,       
        usuarios.name AS usuario_name,
        usuarios.photo AS usuario_photo 
    FROM post 
    LEFT JOIN usuarios ON post.user_id = usuarios.id;`
);
        return result.rows
}

const getPostById = async (id) => {
    const result = await pool.query (`SELECT post.*, usuarios.name AS usuario_name 
        FROM post 
        LEFT JOIN usuarios ON post.user_id = usuarios.id 
        WHERE post.id = $1`, [id])

        return result.rows
}
const createPost = async (title, content, user_id, photo_post) => {
    const result = await pool.query (`INSERT INTO post (title, content, user_id, photo_post) VALUES ($1, $2, $3, $4) RETURNING *`, [title, content, user_id, photo_post])
    return result.rows[0]
}
const editPost = async (id, title, content) => {
    const result = await pool.query (`UPDATE post SET title = $1, content = $2 WHERE id = $3 RETURNING *`, [title, content, id])
    return result.rows[0]
}
const deletePost = async (id) => {
    const result = await pool.query (`DELETE FROM post WHERE id = $1 RETURNING *`, [id])
    if (result.rowCount === 0) {
        return { error: "Post não encontrado." };
    }
    return { message: "Post deletado com sucesso." };
}


module.exports = { getPosts, getPostById, createPost, editPost, deletePost };