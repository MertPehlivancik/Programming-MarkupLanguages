CREATE DEFINER=`root`@`localhost` PROCEDURE `ZimmetGosterTekMalNo`(IN TekNo BIGINT, IN MalzNo BIGINT)
BEGIN
	select tm.TeknisyenNo, t.TeknisyenAdi, t.TeknisyenSoyadi, tm.MalzemeKodu, m.MalzemeAdi, tm.MalzemeStok, tm.IslemTarihi from teknisyen_malzeme as tm, teknisyen as t, malzeme as m where t.TeknisyenNo = tm.TeknisyenNo AND m.MalzemeKodu = tm.MalzemeKodu AND tm.MalzemeStok > 0 AND tm.TeknisyenNo = TekNo AND tm.MalzemeKodu = MalzNo;
END