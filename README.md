# Query Rangking atau Rata-Rata Siswa Tertinggi nomor urut 2

Desain Database
![image](https://user-images.githubusercontent.com/56226681/150556998-86437511-d60c-4cd6-b498-80ca1108560d.png)

Tabel Database
<p align="center" width="100%">
    <img width="40%" src="https://github.com/taufikn10/Query_Rangking_dan_Rata-Rata_Siswa_Tertinggi_nomor_urut_2/blob/main/doc/Tabel%20Siswa.png" /> 
    <img width="40%" src="https://github.com/taufikn10/Query_Rangking_dan_Rata-Rata_Siswa_Tertinggi_nomor_urut_2/blob/main/doc/Tabel%20Pelajaran.png" />
    <img width="40%" src="https://github.com/taufikn10/Query_Rangking_dan_Rata-Rata_Siswa_Tertinggi_nomor_urut_2/blob/main/doc/Tabel%20Nilai.png" />
</p>

### Query SQL untuk mendapatkan rangking
SELECT a.ID_SISWA, a.NAMA, AVG(c.`NILAI`) AS NILAI_RATA_RATA <br>
FROM tbl_siswa a, tbl_nilai c  <br>
WHERE a.`ID_SISWA`= c.`ID_SISWA` <br>
GROUP BY c.`ID_SISWA` ORDER BY NILAI_RATA_RATA DESC

![image](https://user-images.githubusercontent.com/56226681/150561492-f0ed0d59-04b7-4e20-851f-a26db73c0967.png)


### Query SQL untuk mendapatkan rangking
SELECT a.ID_SISWA, a.NAMA, AVG(c.`NILAI`) AS NILAI_RATA_RATA <br>
FROM tbl_siswa a, tbl_nilai c <br>
WHERE a.`ID_SISWA`= c.`ID_SISWA` GROUP BY c.`ID_SISWA` <br>
ORDER BY NILAI_RATA_RATA DESC LIMIT 1 OFFSET 1


![Nilai Rata Rata](https://user-images.githubusercontent.com/56226681/150564874-928cd1ed-3560-4055-a677-0c1b5848fa2c.png)






