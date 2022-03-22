# pygt3x
![Tests](https://github.com/actigraph/pygt3x/actions/workflows/tests.yml/badge.svg)

Python module for reading GT3X/AGDC file format data generated by ActiGraph devices.

## Example Usage

```python
from pygt3x.reader import FileReader
from pygt3x.calibrated_reader import CalibratedReader

# Read raw data and calibrate
# Dump to pandas data frame
with FileReader("WRIST_rawLSB_032Hz.agdc") as reader:
    calibrated_reader =  CalibratedReader(reader)
    df = calibrated_reader.to_pandas()
    print(df.head(5))
```
