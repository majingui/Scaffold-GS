exp_name='10-13-scaffold-reproduct'

voxel_size=0.001
update_init_factor=16
appearance_dim=0
ratio=1
gpu=2

# 这个脚本不能直接跑，会把进程挂到每一个gpu上跑！

ulimit -n 4096

./train.sh -d mipnerf360/bicycle -l ${exp_name}  --gpu ${gpu} --voxel_size ${voxel_size} --update_init_factor ${update_init_factor} --appearance_dim ${appearance_dim} --ratio ${ratio} &
sleep 20s

./train.sh -d mipnerf360/bonsai -l ${exp_name}  --gpu ${gpu} --voxel_size ${voxel_size} --update_init_factor ${update_init_factor} --appearance_dim ${appearance_dim} --ratio ${ratio} &
sleep 20s

./train.sh -d mipnerf360/counter -l ${exp_name}  --gpu ${gpu} --voxel_size ${voxel_size} --update_init_factor ${update_init_factor} --appearance_dim ${appearance_dim} --ratio ${ratio} &
sleep 20s

./train.sh -d mipnerf360/garden -l ${exp_name}  --gpu ${gpu} --voxel_size ${voxel_size} --update_init_factor ${update_init_factor} --appearance_dim ${appearance_dim} --ratio ${ratio} &
sleep 20s

./train.sh -d mipnerf360/kitchen -l ${exp_name}  --gpu ${gpu} --voxel_size ${voxel_size} --update_init_factor ${update_init_factor} --appearance_dim ${appearance_dim} --ratio ${ratio} &
sleep 20s

./train.sh -d mipnerf360/room -l ${exp_name}  --gpu ${gpu} --voxel_size ${voxel_size} --update_init_factor ${update_init_factor} --appearance_dim ${appearance_dim} --ratio ${ratio} &
sleep 20s

./train.sh -d mipnerf360/stump -l ${exp_name}  --gpu ${gpu} --voxel_size ${voxel_size} --update_init_factor ${update_init_factor} --appearance_dim ${appearance_dim} --ratio ${ratio} &