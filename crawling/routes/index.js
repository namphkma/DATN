const express = require('express');
const router = express.Router();
const elasticsearch = require('elasticsearch');
const client = new elasticsearch.Client({
    host: '125.212.235.151:9200',
    log: {
        type: 'file',
        level: 'trace',
        // config options specific to file type loggers
        path: './elasticsearch.log'
    },
    apiVersion: '7.2', // use the same version of your Elasticsearch instance
});
/* GET home page. */
router.get('/', async (req, res, next) => {
    const response = await client.search({
        index: 'news',
        body: {
            size: 0,
            aggs: {
                groupByTag: {
                    terms: {
                        field: "tag",
                    },
                    aggs: {
                        data: {
                            top_hits: {
                                _source: {
                                    includes: ["*"]
                                }
                            }
                        }
                    }
                }
            }
        }
    })
    console.log(response.aggregations.groupByTag.buckets);
    res.status(200).json(response.aggregations.groupByTag.buckets);
});

module.exports = router;
