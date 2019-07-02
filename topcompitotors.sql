/*
Enter your query here.
*/
select hacker_id, name
from(
    select hacker_id, name, count(name) as count_name
    from (

        select submissions.hacker_id, 
            submissions.challenge_id, 
            submissions.score as realscore,
            hackers.name,
            challenges.difficulty_level,
            difficulty.score
        from submissions
        join hackers
        on hackers.hacker_id = submissions.hacker_id
        join challenges
        on challenges.challenge_id = submissions.challenge_id
        join difficulty
        on difficulty.difficulty_level = challenges.difficulty_level
        where submissions.score = difficulty.score) as s
    group by hacker_id, name) as f
where count_name > 1
order by count_name DESC, hacker_id ASC
    
