
load("forum_eda.RData")

#Sum over reps

members$reps = rep(0,66603)
for (i in 1:dim(reputation)[1])
{
  members[reputation[i,5] == members[,1],"reps"] = members[reputation[i,5] == members[,1],"reps"] + 1
}

#Sum over queued

modlogs$ctime = as.POSIXct(modlogs$ctime, origin="1970-01-01")
as.numeric(format(modlogs$ctime, "%Y"))
subset(posts, queued!=0)
subset(posts, queued==0)
forum_map$regularpost = 0
forum_map$queuedpost = 0
for (i in 1:nrow(posts))
{
  if (posts$queued[i] == 0)
  {forum_map$regularpost[forum_map$fid==topics$forum_id[topics$tid == posts$topic_id[i]]] = forum_map$regularpost[forum_map$fid==topics$forum_id[topics$tid == posts$topic_id[i]]] + 1}
  else 
  {forum_map$queuedpost[forum_map$fid==topics$forum_id[topics$tid == posts$topic_id[i]]] = forum_map$queuedpost[forum_map$fid==topics$forum_id[topics$tid == posts$topic_id[i]]] + 1}
}

# load("foruma_map.rdata")
# table(forum_map$name)

z = c("biology", "chemistry", "climate", "cs", "engineering", "gd", "math", "philrel", "physics", "politics", "speculations", "staff")
name = NULL
regularpost = NULL
queuedpost = NULL

for (i in 1:length(z))
{
  name[i] = z[i]
  regularpost[i] = sum(forum_map$regularpost[forum_map$name == z[i]])
  queuedpost[i] = sum(forum_map$queuedpost[forum_map$name == z[i]])
}

forum_sum = data.frame(name = name, regularpost = regularpost, queuedpost = queuedpost)