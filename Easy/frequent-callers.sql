select count(policy_holder_id) as policy_holder_count
FROM
(SELECT policy_holder_id
FROM callers
group by policy_holder_id
having count(*)>=3
) k
