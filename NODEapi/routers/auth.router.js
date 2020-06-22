/*
Imports
*/
const express = require('express');
const router = express.Router();
//

/*
Routes definition
*/
class AuthRouterClass {
    constructor(connection) {
        this.connection = connection;
    }
    
    // Set route fonctions
    routes(){

// Login
router.get('/login',(req,  res) => {
    this.connection.query(`SELECT * FROM users WHERE pseudo='${req.body.pseudo}' AND mdp='${req.body.mdp}'`, (err, item) => {
        if (err) {
            return res.status(502).json({
                method: 'GET',
                route: `/auth/login`,
                data: null,
                error: err,
                status: 502
            });
        }
        else{
            return res.status(200).json({
                method: 'GET',
                route: `/auth/login`,
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
module.exports = AuthRouterClass;
//