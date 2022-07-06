module.exports = function (app){

    app.get('/', async function (req, res){
        res.render('index.ejs');
    });

    app.post('/teste', async function(req, res){
        dados = req.body;
        console.log(dados);
        res.redirect('/');
    });

}