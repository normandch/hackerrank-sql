select  top 30 A.SubscriberKey, sum(scorevalue) as 'Total score', Max(B.FavoriteDriver)
from [NascarProd].[ods].Snapshot_SubscriberAvidityScores A
join [NascarProd].[ods].SubscriberFavoriteDriver B
on B.SubscriberKey = A.SubscriberKey
group by A.SubscriberKey
order by sum(scorevalue) Desc;


