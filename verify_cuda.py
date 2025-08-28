import torch, subprocess, os
print("torch:", torch.__version__)
print("CUDA available:", torch.cuda.is_available())

if torch.cuda.is_available():
    print("torch CUDA:", torch.version.cuda)
    print("cuDNN:", torch.backends.cudnn.version())
    print("GPU:", torch.cuda.get_device_name(0))

