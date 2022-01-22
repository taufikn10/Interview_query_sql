# Query Rangking atau Rata-Rata Siswa Tertinggi nomor urut 2

Desain Database
![image](https://user-images.githubusercontent.com/56226681/150556998-86437511-d60c-4cd6-b498-80ca1108560d.png)

Tabel Database
<p align="center" width="100%">
    <img width="40%" src="https://github.com/taufikn10/Query_Rangking_dan_Rata-Rata_Siswa_Tertinggi_nomor_urut_2/blob/main/doc/Tabel%20Siswa.png" /> 
    <img width="40%" src="https://github.com/taufikn10/Query_Rangking_dan_Rata-Rata_Siswa_Tertinggi_nomor_urut_2/blob/main/doc/Tabel%20Pelajaran.png" />
    <img width="40%" src="https://github.com/taufikn10/Query_Rangking_dan_Rata-Rata_Siswa_Tertinggi_nomor_urut_2/blob/main/doc/Tabel%20Nilai.png" />
</p>

### Rata-Rata Siswa Tertinggi
SELECT a.ID_SISWA, a.NAMA, <br>
		SUM(c.NILAI) AS JUMLAH, <br>
		AVG(c.NILAI) AS NILAI_RATA_RATA, <br>
        RANK() OVER(ORDER BY NILAI_RATA_RATA DESC) AS RANKING <br>
FROM tbl_siswa a, tbl_nilai c <br>
WHERE a.ID_SISWA= c.ID_SISWA <br>
GROUP BY c.ID_SISWA ORDER BY NILAI_RATA_RATA DESC <br>

<p align="center" width="100%">
    <img width="100%" src="https://github.com/taufikn10/Query_Rangking_dan_Rata-Rata_Siswa_Tertinggi_nomor_urut_2/blob/main/doc/Mendapatkan%20Rangking.png" /> 
</p>


### Rata-Rata Siswa Tertinggi nomor urut 2
SELECT a.ID_SISWA, a.NAMA,  <br>
        AVG(c.NILAI) AS NILAI_RATA_RATA, <br>
        RANK() OVER(ORDER BY NILAI_RATA_RATA DESC) AS RANKING <br>
FROM tbl_siswa a, tbl_nilai c <br>
WHERE a.ID_SISWA= c.ID_SISWA <br>
GROUP BY c.ID_SISWA ORDER BY NILAI_RATA_RATA DESC LIMIT 1 OFFSET 1 <br>

<p align="center" width="100%">
    <img width="100%" src="https://github.com/taufikn10/Query_Rangking_dan_Rata-Rata_Siswa_Tertinggi_nomor_urut_2/blob/main/doc/Rata%20-%20Rata%20siswa%20tertinggi%20nomor%20urut%202.png" /> 
</p>





