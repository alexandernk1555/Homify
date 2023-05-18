# Homify - Swipe on apartments for rent                            
                            
<div>
  <p>Our final project at the Le Wagon Web Development Coding Bootcamp I attended in the fall of 2022. Homify is an app for finding apartments for rent by swiping and matching. The web application was made in two weeks and resulted in a MVP that was presented to an audience at the bootcamp's demo day. See embeded video from YouTube.</p>
  <p>Project team:</p>
  <ul>
    <li><a href="https://github.com/AlexDrew90" target="_blank" rel="noreferrer">Alex Drew</a></li>
    <li><a href="https://github.com/juliasnd" target="_blank" rel="noreferrer">Julia Sandmann</a></li>
    <li><a href="https://github.com/alexandernk1555" target="_blank" rel="noreferrer">Alexander Neukomm</a> (speaker)</li>
    <li><a href="https://github.com/jorgenlt" target="_blank" rel="noreferrer">Jørgen Larsen Tjønnteig</a></li>
  </ul>
</div>

<br/><br/>

<div>
  <a target="_blank" href="https://www.youtube.com/watch?v=T3OJIEels1E">
    <img height="300px" alt="demo youtube" src="https://github.com/jorgenlt/homify/assets/108831121/c1857263-56d0-44fd-a79c-9866b15ee593" />
  </a>
</div>

<br/><br/>

<div>
  <a target="_blank" href="https://vimeo.com/808073105">
    <img height="500px"  alt="demo vimeo" src="https://github.com/jorgenlt/homify/assets/108831121/efc847e2-0506-4a40-9175-986b0e306df5" />
  </a>
  <img src="https://github.com/jorgenlt/homify/assets/108831121/67043f00-efe8-48e6-a834-a35fa425b808" height="500px" alt="screenshot mobile" />
</div>

<br/><br/>

<img src="https://cdn-images-1.medium.com/v2/resize:fit:1094/1*bJi3Qkl1lpwOerOA5YRYHQ.png" width="500px" alt="wireframe figma" />
<figcaption>Wireframe and design in Figma.</figcaption>

<br/><br/>

## Features
<ul>
    <li>Sign up and create a profile with a profile picture.</li>
    <li>Create a new search.</li>
    <li>Filter search results by editing your search.</li>
    <li>Swipe on apartments to find a match.</li>
    <li>Instantly book an appointments for viewings on your matches.</li>
    <li>Live instant chat feature with matches.</li>
</ul>

<br/><br/>

<h2>Technologies</h2>
<p>
    Homify is a web application optimized for mobile and built with <a href="https://rubyonrails.org/" target="_blank">Ruby on Rails</a> on both backend and frontend. Data is stored in a PostgreSQL database and Cloudinary is used for cloud storage of the profile and apartment image files. Authentication and authorization is being handled with the <a href="https://github.com/heartcombo/devise" target="_blank">Devise gem</a>. The apps search feature is made with the <a href="https://github.com/Casecommons/pg_search" target="_blank">PgSearch </a>gem.
</p>
<p>
    The application is additionally supported by Webpack, simple_form, maps from Mapbox, stimulus and bootstrap.
</p>

<br/><br/>

<h2>Technical challenges</h2>
<h3>Swiping on apartment cards</h3>
<p>
    The Tinder-like swipe feature to register a "like" or a "nope" turned out to be quite a challenge. The final code is built upon the Javascript library <a href="https://hammerjs.github.io/" target="_blank">Hammer.js</a>, which enables touch gestures to web applications. With a lot of hits and misses the final result both looked good and was running smoothly in the web browser.
</p>

```.js
// app/javascript/controllers/swipe_controller.js

import { Controller } from "@hotwired/stimulus"
import '../swipe_animation'

// Connects to data-controller="swipe"
export default class extends Controller {
    static targets = ["match", "like", "nope"]
    
    // modal pop-up with show listing
    toggle(event) {
        document.getElementById(\`button\${event.path[2].dataset.id}\`).click()
    }
    
    
    connect() {
        // Swiping function is made with Hammer.JS, see below.
        
        /*! Hammer.JS - v2.0.8 - 2016-04-23
        * https://hammerjs.github.io/
        *
        * Copyright (c) 2016 Jorik Tangelder;
        * Licensed under the MIT license */
        
        // function to show match-animation for a set time
        let matchCounter = 0;
        let matchAnimation = () => {
            matchCounter += 1;
            if (matchCounter > 2) {
                const match = document.getElementById("match-animation");
                match.classList.remove('d-none');
                setTimeout(() => {
                    match.classList.add('d-none')
                }, 2300);
            }
        }
        
        
        //function to fade in/out "like"
        let fadeInOutLike = () => {
            const like = document.getElementById("fade-in-out-like");
            like.classList.remove('d-none');
            setTimeout(() => {
                like.classList.add('d-none');
            },2000);
        }
        
        //function to fade in/out "like"
        let fadeInOutNope = () => {
            const nope = document.getElementById("fade-in-out-nope");
            nope.classList.remove('d-none');
            setTimeout(() => {
                nope.classList.add('d-none');
            }, 2000);
        }
        
        // selecting element with class profile to let profiles
        let profiles = document.querySelectorAll('.profile');
        
        const maxAngle = 42;
        const smooth = 0.3;
        const threshold = 42;
        const thresholdMatch = 150;
        profiles.forEach(setupDragAndDrop);
        
        function setupDragAndDrop(profile) {
            const hammertime = new Hammer(profile);
            
            hammertime.on('pan', function (e) {
                profile.classList.remove('profile--back');
                let posX = e.deltaX;
                let posY = Math.max(0, Math.abs(posX * smooth) - 42);
                let angle = Math.min(Math.abs(e.deltaX * smooth / 100), 1) * maxAngle;
                if (e.deltaX < 0) {
                    angle *= -1;
                }
                
                // user is selecting and holding the card and can move it left or right, back and forth.
                profile.style.transform = \`translateX(\${posX}px) translateY(\${posY}px) rotate(\${angle}deg)\`;
                profile.classList.remove('profile--matching');
                profile.classList.remove('profile--nexting');
                if (posX > thresholdMatch) {
                    profile.classList.add('profile--matching');
                    console.log('✅ User is about to swipe yes')
                    
                    fadeInOutLike();
                } else if (posX < -thresholdMatch) {
                    profile.classList.add('profile--nexting');
                    console.log('⛔ User is about to swipe no');
                    
                    fadeInOutNope();
                }
                
                // user releases card on the left (nope),
                // near the middle (back to middle, no action),
                // or on the right (yes)
                if (e.isFinal) {
                    // right side, yes.
                    profile.style.transform = \`\`;
                    if (posX > thresholdMatch) {
                        profile.classList.add('profile--match');
                        console.log('✅ Yes (user is created in matches table)');
                        
                        matchAnimation();
                        
                        if (matchCounter > 2) {
                            // creating a new match in matches-table.
                            console.log( \`matchCounter is \${matchCounter}\`);
                            console.dir(document.location.search.split('=')[1]);
                            const searchId = document.location.search.split('=')[1];
                            const url =  \`/listings/\${profile.dataset.id}/matches\`;
                            const body = {match: {listing_id: profile.dataset.id, search_id: searchId}};
                            fetch(url, {
                                method: "POST",
                                body: JSON.stringify(body),
                                headers: {
                                    'Content-Type': 'application/json',
                                    "X-CSRF-Token": document.querySelector("meta[name=csrf-token]").content}
                                })
                            }
                            
                            // left side, nope
                    } else if (posX < -thresholdMatch) {
                        profile.classList.add('profile--next');
                        console.log('⛔ No!');
                    } else {
                        profile.classList.add('profile--back');
                    }
                }
            });
        }
    }
}
```
