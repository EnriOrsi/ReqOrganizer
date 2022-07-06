function reqsBanco(conexao) {
    this._conexao = conexao;
}

reqsBanco.prototype.AddSkin = function (dados, foto, callback) {
    this._conexao.query('INSERT INTO skins SET ?, foto=?', [dados, foto], callback);
}

reqsBanco.prototype.skins = function (callback) {
    this._conexao.query('SELECT *FROM skins', callback);
}

reqsBanco.prototype.EditSkin = function (dados, callback) {
    this._conexao.query('UPDATE skins SET ? WHERE id_skins = ?', [dados, dados.id_skins], callback);
}

reqsBanco.prototype.Delete = function (id, callback) {
    this._conexao.query('DELETE FROM reqs, info_req, acessos USING reqs, info_req, acessos WHERE reqs.id_req = info_req.id_req AND reqs.id_req = acessos.id_req AND reqs.id_req = ?', id, callback);
}