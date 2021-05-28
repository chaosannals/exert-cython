# exert-cython

```bash
# 初始到 build
python setup.py build_ext

# 输出到原地
python setup.py build_ext --inplace
```

## 细节

通过在 .pyx 文件中注释 distutils 来指定试用 c++

```python
# distutils: language=c++
```
