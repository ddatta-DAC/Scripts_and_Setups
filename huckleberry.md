srun --pty --gres=gpu:pascal:1 -n1 -p normal_q  -t 320:00 --mem 300G  --gres gpu:pascal:2 $SHELL    
sinfo -N -l   


https://www.arc.vt.edu/computing/huckleberry-user-guide/


