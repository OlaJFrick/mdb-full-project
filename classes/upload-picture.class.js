const fs = require('fs');

module.exports = class UploadPicture {

  constructor(app){
    app.post('/upload-picture', (req, res) => {
      const id = req.body.id;
      const vid = req.body.versionId;
      const ext = req.body.imgExtension;
      const foldername = req.body.folder + '/';
      const filename = id + '_' + vid + '.' + ext;
      const filePath = __dirname + '/../src/assets/images/' + foldername + filename;

      const imageBuffer = this.decodeBase64Image(req.body.imgData);
      if (imageBuffer.constructor == Error){
        console.log('error parsing upload file', imageBuffer);
        res.json('error');
        return;
      }

      fs.writeFile(filePath, imageBuffer.data, (err)=> {
        err && console.log('writeFile err:', err);
        res.json(filename);
      });
    });
  }

  decodeBase64Image(dataString) {
    const matches = dataString.match(/^data:([A-Za-z-+\/]+);base64,(.+)$/),
    response = {};

    if (matches.length !== 3) {
      return new Error('Invalid input string');
    }

    response.type = matches[1];
    response.data = new Buffer(matches[2], 'base64');

    return response;
  }
}
