
	-- Tabel

	CREATE TABLE mahasiswa(
		no int NOT NULL AUTO_INCREMENT,
		nim varchar(30),
		nama varchar(30),
		alamat text,
		umur int(20),
		no_hp varchar(20)

		CONSTRAINT pk_mahasiswa_nim PRIMARY KEY(nim)
	);

	CREATE TABLE matakuliah(
		id_matkul varchar(20),
		nama varchar(40),
		sks int(20),
		ket text

		CONSTRAINT pk_matakuliah_idMatkul PRIMARY KEY(id_matkul)
	);

	CREATE TABLE nilai(
		id_nilai varchar(30),
		nim varchar(30),
		id_matkul varchar(20),
		nama_mahasiswa varchar(30),
		nama_matkul varchar(40),

		CONSTRAINT fk_nilai_nim FOREIGN KEY(nim) REFERENCES mahasiswa(nim)
			ON DELETE RESTRICT ON UPDATE RESTRICT,
		

	);