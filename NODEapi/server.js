/* 
Imports
*/
    // Modules
    require('dotenv').config();
    const express = require('express');
    const bodyParser = require('body-parser');
    const ejs = require('ejs');
    const path = require('path');
    const MYSQLClass = require('./services/mysql.class');
    const cors = require('cors');
    //

/* 
Declarations
*/
const server = express();
const port = process.env.PORT;
//


/* 
Server class
*/
class ServerClass{
    constructor(){
        this.MYSQL = new MYSQLClass;
    }

    init(){
        // View engine configuration
    server.engine( 'html', ejs.renderFile );
    server.set( 'view engine', 'html' );

    // Static path configuration
    server.set( 'views', __dirname + '/www' );
    server.use( express.static(path.join(__dirname, 'www')) );

    //=> Body-parser
    server.use(cors());
    server.use(bodyParser.json({limit: '10mb'}));
    server.use(bodyParser.urlencoded({ extended: true }));

    // Start server configuration
    this.config();
    };

    config(){
    
// Connect the DB
this.MYSQL.connectDb()
.then( connection => {
    // Set auth router
    const CrudRouterClass = require('./routers/crud.router');
    const AuthRouterClass = require('./routers/auth.router');
    const QuizzRouterClass = require('./routers/quizz.router');
    const LeaderboardRouterClass = require('./routers/leaderboard.router');
    const crudRouter = new CrudRouterClass(connection);
    const authRouter = new AuthRouterClass(connection);
    const quizzRouter = new QuizzRouterClass(connection);
    const leaderboardRouter = new LeaderboardRouterClass(connection);
    server.use('/api', crudRouter.init());
    server.use('/auth', authRouter.init());
    server.use('/quizz', quizzRouter.init());
    server.use('/leaderboard', leaderboardRouter.init());

    // Set front router
    server.get('/*',  (req, res) => res.render('index') );

    // Launch server
    this.launch();
})
.catch( connectionError => {
    console.log(`MYsql connection error: ${connectionError}`)
})
    };
    
    launch(){
        server.listen(port, () => {
            console.log(`http://localhost:${port}`);
        });
    };
}
//

/* 
Start server
*/
const NODEapi = new ServerClass();
NODEapi.init();
//