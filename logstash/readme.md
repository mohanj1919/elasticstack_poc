curl -XPUT "http://elasticsearch:9200/_template/audit_index_template" -H 'Content-Type: application/json' -d'
{
  "index_patterns": ["audit-*"],
  "version" : 1,
  "settings" : {
    "index.refresh_interval" : "5s"
  },
  "mappings" : {
    "audit" : {
      "properties": {
        "message": {
          "properties": {
            "allfields": {
              "type": "text"
            },
            "ipaddress": {
              "type": "ip",
              "copy_to": ["allfields"]
            },
            "phoneNo": {
              "type": "keyword",
              "copy_to": ["allfields"]
            },
            "email": {
              "type": "keyword",
              "copy_to": ["allfields"]
            },
            "request_url": {
              "type": "text",
              "copy_to": ["allfields"]
            },
            "request_params": {
              "dynamic": true,
              "properties": {}
            },
            "datetime": {
              "type": "text",
              "copy_to": ["allfields"]
            }
          }
        },
        "@timestamp": {
          "type": "date"
        },
        "@version": {
          "type": "keyword",
          "ignore_above": 256
        },
        "beat": {
          "properties": {
            "hostname": {
              "type": "keyword",
              "ignore_above": 256
            },
            "name": {
              "type": "keyword",
              "ignore_above": 256
            },
            "version": {
              "type": "keyword",
              "ignore_above": 256
            }
          }
        },
        "fields": {
          "properties": {
            "app": {
              "type": "keyword",
              "ignore_above": 256
            },
            "log_type": {
              "type": "keyword",
              "ignore_above": 256
            }
          }
        },
        "host": {
          "properties": {
            "architecture": {
              "type": "keyword",
              "ignore_above": 256
            },
            "containerized": {
              "type": "boolean"
            },
            "name": {
              "type": "keyword",
              "ignore_above": 256
            },
            "os": {
              "properties": {
                "codename": {
                  "type": "keyword",
                  "ignore_above": 256
                },
                "family": {
                  "type": "keyword",
                  "ignore_above": 256
                },
                "platform": {
                  "type": "keyword",
                  "ignore_above": 256
                },
                "version": {
                  "type": "keyword",
                  "ignore_above": 256
                }
              }
            }
          }
        },  
        "input": {
          "properties": {
            "type": {
              "type": "keyword",
              "ignore_above": 256
            }
          }
        },
        "offset": {
          "type": "long"
        },
        "prospector": {
          "properties": {
            "type": {
              "type": "keyword",
              "ignore_above": 256
            }
          }
        },
        "source": {
          "type": "keyword",
          "ignore_above": 256
        },
        "tags": {
          "type": "keyword",
          "ignore_above": 256
        }
      }
    }
  }
}'