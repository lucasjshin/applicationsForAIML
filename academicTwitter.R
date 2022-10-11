library(twitteR)
library(academictwitteR)
library(tidyverse)
library(rjson)
library(jsonlite)


bearer_token = "AAAAAAAAAAAAAAAAAAAAACAreAEAAAAAvFHashRDshTxFe2%2Bu7uAvd%2BYOiI%3DI6ptSQog0kkUy2lkNgsFN5C7aQ1M3pqB97hJVJA9SpSQtxNCjL"

#Sys.setenv(BEARER_TOKEN = "AAAAAAAAAAAAAAAAAAAAAJoXhwEAAAAAEL3BzA3ofPsG1%2BoqZWfFfKcOYOE%3DUkEFoumS7lhK5z6lJWBvpFgNrOmW383QDhRhMoW8NWnnhdf2Hh")

#### query stuff ####
fields <- c("created_at", "text", "public_metrics", "lang")
start <- "2019-01-01T00:00:00Z"
end <- "2022-01-01T00:00:00Z"
numberOfTweets <- 1

#### Healthcare ####
healthcareQuery <- c("Artificial Intelligence Healthcare", "Artificial Intelligence Health Services", "Artificial Intelligence Health Providers", "Artificial Intelligence Pharma", "Artificial Intelligence Life Science", "Artificial Intelligence Insurance", "Artificial Intelligence Consumer Health")

healthcareData <- get_all_tweets(query = healthcareQuery,
                                start_tweets = start,
                                end_tweets = end,
                                is_retweet = FALSE,
                                bearer_token = bearer_token,
                                n = numberOfTweets,
                                lang = "en") %>% select(fields) %>% mutate(category = "healthcare")


#### Automotive ####
automotiveQuery <- c("Artificial Intelligence Automotive", "Artificial Intelligence Component Suppliers", "Artificial Intelligence OEM", "Artificial Intelligence Original Equipment Manufacturer", "Artificial Intelligence Car")

automotiveData <- get_all_tweets(query = automotiveQuery,
                                 start_tweets = start,
                                 end_tweets = end,
                                 is_retweet = FALSE,
                                 bearer_token = bearer_token,
                                 n = numberOfTweets,
                                 lang = "en") %>% select(fields) %>% mutate(category = "automotive")


#### Finance ####
financeQuery <- c("Artificial Intelligence Financial Services", "Artificial Intelligence Wealth Management", "Artificial Intelligence Banking", "Artificial Intelligence")

financeData <- get_all_tweets(query = financeQuery,
                              start_tweets = start,
                              end_tweets = end,
                              is_retweet = FALSE,
                              bearer_token = bearer_token,
                              n = numberOfTweets,
                              lang = "en") %>% select(fields) %>% mutate(category = "finance")

#### Transportation & Logistics ####
transportationQuery <- c("Artificial Intelligence Transportation", "Artificial Intelligence Logistics")

transportationData <- get_all_tweets(query = transportationQuery,
                                     start_tweets = start,
                                     end_tweets = end,
                                     is_retweet = FALSE,
                                     bearer_token = bearer_token,
                                     n = numberOfTweets,
                                     lang = "en") %>% select(fields) %>% mutate(category = "transportation")


#### Media ####
mediaQuery <- c("Artificial Intelligence Technology", "Artificial Intelligence Communication", "Artificial Intelligence Entertainment", "Artificial Intelligence Media")

mediaData <- get_all_tweets(query = mediaQuery,
                            start_tweets = start,
                            end_tweets = end,
                            is_retweet = FALSE,
                            bearer_token = bearer_token,
                            n = numberOfTweets,
                            lang = "en") %>% select(fields) %>% mutate(category = "media")


#### Retail ####
retailQuery <- c("Artificial Intelligence Retail", "Artificial Intelligence Consumer Retail")

retailData <- get_all_tweets(query = retailQuery,
                             start_tweets = start,
                             end_tweets = end,
                             is_retweet = FALSE,
                             bearer_token = bearer_token,
                             n = numberOfTweets,
                             lang = "en") %>% select(fields) %>% mutate(category = "retail")


#### Energy ####
energyQuery <- c("Artificial Intelligence Energy", "Artificial Intelligence Oil", "Artificial Intelligence Gas", "Artificial Intelligence Power Utilities")

energyData <- get_all_tweets(query = energyQuery,
                             start_tweets = start,
                             end_tweets = end,
                             is_retweet = FALSE,
                             bearer_token = bearer_token,
                             n = numberOfTweets,
                             lang = "en") %>% select(fields) %>% mutate(category = "energy")


#### Manufacturing ####
manufacturingQuery <- c("Artificial Intelligence Manufacturing", "Artificial Intelligence Industrial", "Artificial Intelligence Raw Materials")

manufacturingData <- get_all_tweets(query = manufacturingQuery,
                                    start_tweets = start,
                                    end_tweets = end,
                                    is_retweet = FALSE,
                                    bearer_token = bearer_token,
                                    n = numberOfTweets,
                                    lang = "en") %>% select(fields) %>% mutate(category = "manufacturing")

#write_json(healthcareData, "healthcareData.json")


