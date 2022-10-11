library(twitteR)
library(academictwitteR)
library(tidyverse)

API_key = "RYwLw5mp7BPFwCQ5WtQ8S3543"
API_secret = "puMpq7cj9KdIZyusLwCOwdUqkvq5ytDYZSWMRLz7X0wZ84hm8g"
Access_token = "1113415761761009666-91jLmFTQ6y5PKy8o4pRjJz6UXLgTlb"
Access_secret = "w5Is4kQnWU46mMBpUkQNlObyBoVrjIKakgGLfDhfebYtn"

bearer_token = "AAAAAAAAAAAAAAAAAAAAACAreAEAAAAAvFHashRDshTxFe2%2Bu7uAvd%2BYOiI%3DI6ptSQog0kkUy2lkNgsFN5C7aQ1M3pqB97hJVJA9SpSQtxNCjL"

#Sys.setenv(BEARER_TOKEN = "AAAAAAAAAAAAAAAAAAAAAJoXhwEAAAAAEL3BzA3ofPsG1%2BoqZWfFfKcOYOE%3DUkEFoumS7lhK5z6lJWBvpFgNrOmW383QDhRhMoW8NWnnhdf2Hh")

keyword <- c("Artificial Intelligence", "Machine Learning")

scrapedData <- get_all_tweets(query = keyword,
                    start_tweets = "2021-01-01T00:00:00Z",
                    end_tweets = "2021-01-05T00:00:00Z",
                    bearer_token = bearer_token)
                    
