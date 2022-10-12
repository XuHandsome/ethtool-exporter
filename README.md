Ethtool Exporter
================

基于[ethtool-exporter](https://github.com/ebikt/ethtool-exporter#readme)修改

### 新增特性
--------------
- [x] 支持博通网卡驱动`bnxt_en`, 并设为默认
- [x] --brand 指定网卡厂商, 支持`broadcom` | `intel`
- [x] 新增收发功率dbm单位指标: `transciever_txdbm` | `transciever_rxdbm`

### 构建
--------------
```bash
cd ethtool-exporter
make
ls -l ./dist/ethtool-exporter
# 清理
make clean
```

### 使用
--------------
```bash
./ethtool-exporter -h
```


### 指标说明
--------------

| 指标                | 描述                          |
| ------------------- | ----------------------------- |
| transciever_present | 指标收集状态, **1**为收集成功 |
| transciever_temp    | 传感器温度, 单位(C)           |
| transciever_volt    | 传感器电压, 单位(V)           |
| transciever_bias    | 偏置电流, 单位(A)             |
| transciever_txw     | 发送信号平均光功率, 单位(W)   |
| transciever_rxw     | 接收信号平均光功率, 单位(W)   |
| transciever_txdbm   | 发送信号平均光功率, 单位(dBm) |
| transciever_rxdbm   | 接收信号平均光功率, 单位(dBm) |

