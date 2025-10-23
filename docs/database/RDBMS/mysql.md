# MySQL

## Guides/tips/...etc

* 8.0
    * mysql cli
        * [dev.mysql.com/doc/refman/8.0/en/mysql.html](https://dev.mysql.com/doc/refman/8.0/en/mysql.html)
    * [11.2 Schema Object Names](https://dev.mysql.com/doc/refman/8.0/en/identifiers.html)
* [bugs.mysql.com/bug.php?id=11472](https://bugs.mysql.com/bug.php?id=11472)
    * Triggers not executed following foreign key updates/deletes
* [MySQL version 5.7/4.6.7 mysqlbinlog — Utility for Processing Binary Log Files](https://dev.mysql.com/doc/refman/5.7/en/mysqlbinlog.html)
* [GCP/mysql/backup](https://cloud.google.com/mysql/backup)
* For High availability (HA):
    * MySQL Replication
    * MySQL Group Replication
    * MySQL NDB Cluster
    * MySQL Galera Cluster
    * MySQL Router + Group Replication

# MySQL 5.7 Cluster 選擇比較表

| **項目**               | **MySQL Replication**       | **MySQL Group Replication** | **MySQL NDB Cluster**      | **MySQL Galera Cluster**      | **MySQL Fabric**             |
|-------------------------|-----------------------------|----------------------------|----------------------------|-------------------------------|----------------------------|
| **版本支援**           | 5.5 以上                    | 5.7.17 以上                | 5.7 以上                   | 5.5 以上                       | 5.6 - 5.7 (已棄用)         |
| **同步方式**           | 異步 / 半同步              | 同步 (強一致性)             | 同步 (Memory-based)        | 同步 (強一致性)               | 異步                        |
| **多主支援**           | ❌                          | ✅ (Multi-Primary)          | ✅ (Multi-Master)           | ✅ (Multi-Master)              | ❌                          |
| **資料一致性**         | 最終一致性 (可能有延遲)     | 強一致性                    | 強一致性                    | 強一致性                       | 最終一致性                 |
| **自動 Failover**     | 部分支援（需第三方工具）   | ✅                          | ✅                          | ✅                              | ✅                          |
| **自動 Healing**      | ❌                          | ✅                          | ✅                          | ✅                              | ❌                          |
| **橫向擴展**           | 垂直擴展（Master 可擴展）  | 垂直 & 水平擴展             | 水平擴展                    | 水平擴展                        | 水平擴展                   |
| **分片 (Sharding)**   | ❌                          | ❌                          | ✅                          | ❌                              | ✅                          |
| **延遲時間**           | 低（異步同步）             | 中（同步同步）              | 極低（Memory-based）       | 中（同步同步）                 | 中                           |
| **網路依賴**           | 低                          | 中                          | 高                          | 中                              | 中                           |
| **容錯能力**           | 單點容錯                   | 節點自動恢復                | 高容錯，資料分片            | 節點自動恢復                   | 單點容錯                   |
| **資料庫讀寫分離**     | ✅                          | ✅                          | ✅                          | ✅                              | ✅                          |
| **地理分佈能力**       | 良好                        | 一般                         | 不建議                      | 一般                            | 一般                        |
| **適合的應用場景**     | 讀多寫少                    | 金融系統、多寫高可用         | 高併發、低延遲               | 多資料中心同步                  | 測試 & 學習用途            |
| **管理複雜度**         | 低                          | 中                          | 高                          | 中                              | 中                           |
| **佈建難度**           | 簡單                        | 中                          | 複雜                        | 中                              | 中                           |
| **第三方工具需求**     | ProxySQL 或 HAProxy        | MySQL Router               | Management Node, SQL Node  | HAProxy 或 MariaDB MaxScale    | Fabric 自身提供              |

---

## 🎯 **推薦選擇依場景**
| 使用場景               | 推薦選擇                         |
|-------------------------|----------------------------------|
| 讀多寫少、簡單主從架構 | **MySQL Replication**            |
| 金融交易、跨區域同步   | **MySQL Group Replication**      |
| 高併發、低延遲、電信級 | **MySQL NDB Cluster**            |
| 全球多主寫入、無中斷服務 | **MySQL Galera Cluster**          |
| 學習用途，測試架構     | **MySQL Replication** 或 **MySQL Fabric** |

---

* AWS DMS (Database Migration Service)
