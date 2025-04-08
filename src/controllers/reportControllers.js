const PDFDocument = require("pdfkit");

const UserModel = require("../models/UserModel");

const exportUserPDF = async (req, res)=> {
    try {
        const users = await UserModel.getUsuarios();

        res.setHeader("Content-Type", "application/pdf");
        res.setHeader("Content-Disposition", "inline; filename=users.pdf");

        const doc = new PDFDocument();
        doc.pipe(res);

        //titulo
        doc.fontSize(20).text("Relatorio de Users", {align: "center"});
        doc.moveDown();

        //cabeçalho
        doc.fontSize(12).text("Id | Nome | Email | Password", {underline: true});
        doc.moveDown(0.5);

        // add dados bruxos
        users.forEach((users) => {
            doc.text(
                `${users.id} | ${users.name} | ${users.email} | ${users.password}`,
            )
        });
        doc.end();
    } catch (error) {
        res.status(500).json({message: "erro ao gerar o PDF"})
    }
}

module.exports = {exportUserPDF}