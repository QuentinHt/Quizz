/*
Imports
*/
const express = require('express');
const router = express.Router();
//

/*
Routes definition
*/
class QuizzRouterClass {
    constructor(connection) {
        this.connection = connection;
    }
    
    // Set route fonctions
    routes(){

// Login
router.get('/:endpoint',(req,  res) => {
    this.connection.query(`SELECT * FROM questions WHERE theme='${req.params.endpoint}'`, (err, item) => {
        if (err) {
            return res.status(502).json({
                method: 'GET',
                route: `/quizz/login`,
                data: null,
                error: err,
                status: 502
            });
        }
        else{
            return res.status(200).json({
                method: 'GET',
                route: `/quizz/login`,
                data: item,
                error: null,
                status: 200
            });
        };
    });    
})
    };

    // Start router
    init(){
        // Get route fonctions
        this.routes();

        // Sendback router
        return router;
    };
};
//

/*
Export
*/
module.exports = QuizzRouterClass;
//