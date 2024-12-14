# MotiAuto

# Install
MotiAutoリポジトリ等を取得する。その後環境整備＆ビルドまで行う
```
chmod +x ./set_env.sh
./set_env.sh
```
バイナリをセットアップする
```
. install/setup.bash
```

# SIM
シミュレーションの実行。TurtleSimをロボットとしたシミュレーションを行える
```
ros2 launch moti_auto_launch sim.launch.xml
```
