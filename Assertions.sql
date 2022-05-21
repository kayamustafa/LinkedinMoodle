CREATE ASSERTION is_user_born_to_apply
CHECK (
NOT EXISTS
(SELECT Birthday FROM person, person_apply_job_offer WHERE person.Birthday >
person_apply_job_offer.App_Date)
);

CREATE ASSERTION is_user_eighteenplus
CHECK(
 NOT EXISTS
 (SELECT Birthday FROM person WHERE Birthday > '2004-01-01' )
);

CREATE ASSERTION is_post_shared
CHECK(
 EXISTS
 (SELECT Post_ID FROM post, user_can_comment_post WHERE post.Post_ID =
user_can_comment_post.Post_ID)
);
