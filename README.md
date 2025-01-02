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

# Auto Driving
自律走行ソフトウェアの起動
```
ros2 launch moti_auto_launch auto.launch.xml
```

# Manual Driving
手動でハードウェア試す用
```
ros2 launch moti_auto_launch manual.launch.xml
```