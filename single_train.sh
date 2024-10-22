scene='mytest/scene1/'
exp_name='mjg_test_scene1'
voxel_size=0.001
update_init_factor=16
appearance_dim=0
ratio=1
gpu=2

# example:
dos2unix train.sh
./train.sh -d ${scene} -l ${exp_name} --gpu ${gpu} --voxel_size ${voxel_size} --update_init_factor ${update_init_factor} --appearance_dim ${appearance_dim} --ratio ${ratio}