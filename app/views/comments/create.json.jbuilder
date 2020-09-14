json.comment @comment.comments
json.id @comment.id
json.user_name @comment.user.name
json.user_id @comment.user.id
json.created_at @comment.created_at.strftime("%Y年%m月%d日 %H時%M分")
json.post_user @user_of_post
json.poster_id @comment.post.user_id