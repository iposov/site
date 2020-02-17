import os
from zipfile import ZipFile, ZIP_LZMA, ZIP_DEFLATED

os.makedirs("tests", exist_ok=True)
with ZipFile('tests.zip', mode="w", compression=ZIP_DEFLATED, compresslevel=9) as tests_zip:
    for deg in range(2, 21):
        infile = f"tests/2to{deg}.in"
        outfile = f"tests/2to{deg}.out"
        with open(infile, "w") as finput, open(outfile, "w") as foutput:
            finput.write(f"{2 ** deg}\n")
            n = 2 ** deg
            # 0-1 2-3 4-5 6-7 8-9 10-11 12-13 14-15
            # 0-2 4-6 8-10 12-14
            # 0-4 8-12
            # 0-8
            delta = 1
            while delta < n:
                x = 0
                while x + delta < n:
                    finput.write(f"{x} {x + delta}\n")
                    x += 2 * delta

                delta *= 2

            for t in range(n - 2):
                foutput.write("NO\n")
            foutput.write("YES\n")
        tests_zip.write(infile)
        tests_zip.write(outfile)