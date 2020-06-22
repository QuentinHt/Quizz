document.addEventListener('DOMContentLoaded', () => {

    // Déclarations
    
    const apiUrl = 'http://localhost:6985';

    // Form Register
    
    const registerForm = document.querySelector('#formRegister');
    const registerPseudo = document.querySelector('#formRegister input#pseudo');
    const registerMdp = document.querySelector('#formRegister input#mdp');
    const registerMail = document.querySelector('#formRegister input#mail');
    const registerSubmit = document.querySelector('#formRegister input[type=submit]')

    const loginForm = document.querySelector('#formLogin');
    const loginPseudo = document.querySelector('#formLogin input#pseudoLog');
    const loginMdp = document.querySelector('#formLogin input#mdpLog');
    const loginSubmit = document.querySelector('#formLogin input[type=submit]');

    const main = document.querySelector('main');
    const h1Span = document.querySelector('main h1 span');
    const sectionQuizz = document.querySelector('#listQuizz');
    const quizz = document.querySelector('#Quizz');
    const startQuizz = document.querySelector('#startQuizz');
    const leaderboard = document.querySelector('#leaderBoard ul');
    const questions = document.querySelector('#questions');
    const scoreQuizz = document.querySelector('#score span');
    const anecdote = document.querySelector('#anecdote');
    
   // Fonctions

    registerForm.addEventListener('submit', event => {
        event.preventDefault();
        if(registerPseudo.value.length > 4 && registerMdp.value.length > 4){
        new FETCHrequest(`${apiUrl}/api/users`, 'POST', {
            "pseudo": registerPseudo.value,
            "mdp": registerMdp.value,
            "mail": registerMail.value,
        })
        .fetch()
        .then( fetchData => {
            console.log(fetchData);
            localStorage.setItem('localPseudo', registerPseudo.value);
            localStorage.setItem('localMdp', registerMdp.value);
            main.classList.remove('hidden');
            sectionQuizz.classList.remove('hidden');
            registerForm.classList.add('hidden');
            loginForm.classList.add('hidden');
            log();
        })
        .catch( fetchError => {
            console.error(fetchError)
        })
    }
    })
    
    // Se log

    loginSubmit.addEventListener('click', event => {
        event.preventDefault();
        new FETCHrequest(`${apiUrl}/auth/login`, 'GET', {
            "pseudo": loginPseudo.value,
            "mdp": loginMdp.value,
        })
        .fetch()
        .then( fetchData => {
            console.log(fetchData);
            localStorage.setItem('localPseudo', loginPseudo.value);
            localStorage.setItem('localMdp', loginMdp.value);
            main.classList.remove('hidden');
            sectionQuizz.classList.remove('hidden');
            registerForm.classList.add('hidden');
            loginForm.classList.add('hidden');
            log();
        })
        .catch( fetchError => {
            console.error(fetchError)
        })
    })

    // Log auto

    if(localStorage.getItem('localPseudo') && localStorage.getItem('localMdp')){
            event.preventDefault();
            new FETCHrequest(`${apiUrl}/auth/login`, 'GET', {
                "pseudo": localStorage.getItem('localPseudo'),
                "mdp": localStorage.getItem('localMdp'),
            })
            .fetch()
            .then( fetchData => {
                console.log(fetchData);
                main.classList.remove('hidden');
                sectionQuizz.classList.remove('hidden');
                registerForm.classList.add('hidden');
                loginForm.classList.add('hidden');
                log();
            })
            .catch( fetchError => {
                console.error(fetchError)
            })
    }

    const log = () => {
        h1Span.innerHTML = localStorage.getItem('localPseudo');
        new FETCHrequest(`${apiUrl}/api/theme`, 'GET', )
        .fetch()
        .then(fetchData => {
            console.log(fetchData.data);
            for(let item of fetchData.data){
                sectionQuizz.innerHTML += `
                    <div>
                        <h2>${item.titre}</h2>
                        <p>${item.description}</p>
                    </div>
                `;
            }
            for(let i = 1; i <= fetchData.data.length; i++){
                sectionQuizz.querySelector(`div:nth-of-type(${i})`).addEventListener('click', (e) => {
                    sectionQuizz.classList.add('hidden');
                    quizz.classList.remove('hidden');
                    quizz.querySelector('h1 span').innerHTML = sectionQuizz.querySelector(`div:nth-of-type(${i}) h2`).innerHTML;

                    new FETCHrequest(`${apiUrl}/quizz/${quizz.querySelector('h1 span').innerHTML}`, 'GET', )
                    .fetch()
                    .then(fetchData => {
                        console.log(fetchData);
                        let tabQuestions = fetchData.data;
                        startQuizz.addEventListener('click', event => {
                            quizzStart(tabQuestions);
                        });
                    })
                    .catch( fetchError => {
                        console.error(fetchError)
                    });

                    new FETCHrequest(`${apiUrl}/leaderboard/${quizz.querySelector('h1 span').innerHTML}`, 'GET', )
                    .fetch()
                    .then(fetchData => {
                        console.log(fetchData);
                        leaderboard.innerHTML = '';
                        let classement = fetchData.data;
                        classement.sort(function(a, b){return b.score-a.score});
                        for(let score of classement){
                            leaderboard.innerHTML += `
                                <li><span>${score.pseudo}</span> - <span>${score.score} points</span></li>
                            `
                        }
                    })
                    .catch( fetchError => {
                        console.error(fetchError)
                    });
                });
            }
        })
        .catch( fetchError => {
            console.error(fetchError)
        })
    }

    const quizzStart = quest => {
        let score = 0;
        scoreQuizz.innerHTML = score;
        let count = 0;
        let aleatQuest = [`<p class='good'>${quest[count].prop1}</p>`,`<p class='false'>${quest[count].prop2}</p>`,`<p class='false'>${quest[count].prop3}</p>`,`<p class='false'>${quest[count].prop4}</p>`];
                shuffle(aleatQuest);
            questions.innerHTML = `<h1>${quest[count].question}</h1>
            ${aleatQuest[0]}${aleatQuest[1]}${aleatQuest[2]}${aleatQuest[3]}
        `;
        let response = questions.querySelectorAll('p');
        for(let i = 0; i<response.length; i++){
            response[i].addEventListener('click', () => {
                if(response[i].classList.contains('good') === true){
                    score ++;
                    scoreQuizz.innerHTML = score;
                    response[i].classList.add('goodAnswer');
                }
                else {
                    response[i].classList.add('falseAnswer');
                    questions.querySelector('.good').classList.add('goodAnswer');
                };
                anecdote.innerHTML = 'Anecdote : ' + quest[count].anecdote;
            count ++;
            setTimeout(() => {
                let aleatQuest = [`<p class='good'>${quest[count].prop1}</p>`,`<p class='false'>${quest[count].prop2}</p>`,`<p class='false'>${quest[count].prop3}</p>`,`<p class='false'>${quest[count].prop4}</p>`];
                shuffle(aleatQuest);
            questions.innerHTML = `<h1>${quest[count].question}</h1>
            ${aleatQuest[0]}${aleatQuest[1]}${aleatQuest[2]}${aleatQuest[3]}
        `;
        response = questions.querySelectorAll('p');
        nextQuestion(quest, response, count, score);
        anecdote.innerHTML = '';
    }, 4000);
            });
        };

    };

    const nextQuestion = (quest, response, count, score) => {
        for(let i = 0; i<response.length; i++){
            response[i].addEventListener('click', () => {
                if(response[i].classList.contains('good') === true){
                    score ++;
                    scoreQuizz.innerHTML = score;
                    response[i].classList.add('goodAnswer');
                }
                else {
                    response[i].classList.add('falseAnswer');
                    questions.querySelector('.good').classList.add('goodAnswer');
                };
                anecdote.innerHTML = 'Anecdote : ' + quest[count].anecdote;
            count ++;
            setTimeout(() => {
                if(count === 30){
                    new FETCHrequest(`${apiUrl}/api/score`, 'POST', {
                        "pseudo": localStorage.getItem('localPseudo'),
                        "score": score,
                        "theme": document.querySelector('#Quizz h1 span').innerHTML,
                    })
                    .fetch()
                    .then( fetchData => {
                        console.log(fetchData);
                        quizz.classList.add('hidden');
                        sectionQuizz.classList.remove('hidden');
                        questions.innerHTML = '';
                    })
                    .catch( fetchError => {
                        console.error(fetchError)
                    })
                }
                else {
                    let aleatQuest = [`<p class='good'>${quest[count].prop1}</p>`,`<p class='false'>${quest[count].prop2}</p>`,`<p class='false'>${quest[count].prop3}</p>`,`<p class='false'>${quest[count].prop4}</p>`];
                shuffle(aleatQuest);
            questions.innerHTML = `<h1>${quest[count].question}</h1>
            ${aleatQuest[0]}${aleatQuest[1]}${aleatQuest[2]}${aleatQuest[3]}
        `;
                response = questions.querySelectorAll('p');
                nextQuestion(quest, response, count, score);
                }
                anecdote.innerHTML = '';
            }, 4000)

            });
        };
        // setTimeout(() => {
        //     console.log()
        //     count ++;
        //     nextQuestion(quest, response, count, score);
        // }, 5000)
    };

    const randomInt = (min, max) => {
        return (min + Math.floor ((max - min + 1) * Math.random ()));
    }
    const shuffle = (items) => {
        var i, j;
        var item;
        if ((!items.length) || (items.length == 1))
            return;
        for (i = items.length - 1; i != 0; i --) {
            j = randomInt (0, i);
            item = items[j];
            items[j] = items[i];
            items[i] = item;
        }
    }
    })