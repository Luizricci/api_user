class PostList{
    constructor(){
        this.posts= [];
    }

    createPost(post){
        this.posts.push(post);
    }

    deletePost(id){
        this.posts = this.posts.filter(user => user.id != id);
    }
    getPostById(id){
        const post = this.posts.find(user => user.id == id)
        if(!post) {
            throw new Error('Post não encontrado');
        }
        return post;
    }
    updatePost(id, updateData){
        const post = this.getPostById(id);
        Object.assign(post, updateData);
        return post;
    }

}

module.exports = PostList;