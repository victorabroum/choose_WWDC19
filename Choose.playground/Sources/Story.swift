import Foundation

public class Story {
    
    let ballon01 = Node(text: "Today I want to tell the story of a boy full of dreams. Going back in time, when he was only 17 years old and had to choose which college he wanted to attend, like every teenager, the pressure of his parents consumed him, the desire to please his parents above his own will.")
    let ballon02 = Node(text: "As he was fascinated by cars, robots, and the Iron Man, he decided that he would study Mechanical Engineering, which greatly pleased his parents. He struggled and managed to get into a great university. One of the first classes he took in the course was called Introduction to Computing.")
    let ballon03 = Node(text: "Already in the first class, when he wrote his first line of code, felt his eyes widening, he saw that it was incredible, and computing become his newest passion. Then he began to wonder if mechanics really was what he wanted for his life, so he had to make a decision:")
    // Checkpoint 1
    let choice01ballon02 = Node(text: "Continue in the same college")
    let choice02ballon02 = Node(text: "Switch to Computer Science")
    
    // If choose Comp
    let compBallon01 = Node(text: "He decided to run after his dreams and switched courses, now in his twenties he is studying Computer Science, and every class he takes is just more confirmation that it was what he wanted for his life.")
    let compBallon02 = Node(text: "One day walking down the aisles of his university he saw a pamphlet for a project called the Apple Developer Academy. As he had never programmed for iOS, he did not feel confident to try the selection process")
    // Checkpoint 2
    let choice01compBallon02 = Node(text: "Apply for the Academy Selection Process")
    let choice02compBallon02 = Node(text: "Do not apply for the selection process")
    
    // If choose Academy
    let acadBallon01 = Node(text: "Even though he was afraid, he decided to take a risk, and signed up for the Apple Developer Academy. After a waiting time he received an email, which said he was approved for the project, and he was so happy that he looked like a child that just won his first video game.")
    let acadBallon02 = Node(text: "Then the Academy begins and happiness only increases, he begins to be bombarded with the idea that he must chase his dreams, must work with what he likes and whatever he does has to have passion.")
    let acadBallon03 = Node(text: "Did not have much Academy time when he was introduced to the first CHALLENGE ... Make an app! At that moment he could do two things")
    // Checkpoint 3
    let choice01acadBallon03 = Node(text: "Do not take a lot of risk and make a normal app")
    
    // If did not take risk
    let calculatorBallon01 = Node(text: "Playing safe, he used his previous knowledge, and created a Calculator. It worked perfectly, could do various types of operations, even derivative.")
    let calculatorBallon02 = Node(text: "On the day of the presentation he killed it, his slides were beautiful and he didn't stutter once... However, the teachers's comments were not very encouraging, they asked why he had bet on security instead of working with his passions.")
    let calculatorBallon03 = Node(text: "Our choices make all the difference in our lives!")
    let calculatorBallon04 = Node(text: "This could have been my life if I had chosen to make a normal app, but I didn't. Play again to try to figure out my true story.")
    
    // If create a game
    let choice02acadBallon03 = Node(text: "Take risks and create a GAME")
    let gameBallon01 = Node(text: "Even though he hadn't study it yet, he began to work with SpriteKit, and started to think about how he could do a single-screen game. So he decided to pay tribute to one of his favorite games, and created a game of battles in turns.")
    let gameBallon02 = Node(text: "In addition to having loved building his own game from scratch without following a tutorial, he realized a new passion: SpriteKit and game creation.")
    let gameBallon03 = Node(text: "Since then he has been chasing his dream of creating games and putting them in store, other projects are already in development and he will not stop creating more and more great experiences through games.")
    let gameBallon04 = Node(text: "After spending some time at the Academy, he heard about an excellent opportunity to further increase his horizons and expand his world view, the famous WWDC and more than that a contest called ScholarShips, an incredible opportunity to who is still studying.")
    // Checkpoint 4
    
    let choice01gameBallon04 = Node(text: "Would submit a project to WWDC")
    let choice02gameBallon04 = Node(text: "YOU MUST TRY TO GO TO WWDC")
    
    let wwdc2019Ballon01 = Node(text: "Our choices make all the difference in our lives!")
    let wwdc2019Ballon02 = Node(text: "Even though it might not look like at the time, every choice we make is crucial to our path in life. None of them is less important than the other, because sometimes a bad decision in the present may open up a door in the future. So instead of regretting the past, think about how your choices have shaped your present life.")
    let wwdc2019Ballon03 = Node(text: "Be grateful for every wrong turn, every misstep, and every heartbreak. I am grateful for the choices that led me to this moment, because now I’m able to tell my story through one of my greatest passions, games. And I hope this decision takes me closer to my dream: going to WWDC and meeting awesome people.")
    
    // If did not choose Academy
    let notAcadBallon01 = Node(text: "Because of insecurity and being very busy, he decided not to enter the selection process and continue with his project at his University thanks to his projects.")
    let notAcadBallon02 = Node(text: "Our choices make all the difference in our lives!")
    let notAcadBallon03 = Node(text: "This could have been my life if I had chosen not to try Apple Academy, but I tried. Play again to try to figure out my true story.")
    
    // If choose Mec
    let mecBallon03 = Node(text: "Despite realizing that his passion for computing, he decided to continue in Mechanics, fearing what his parents would think if he decided to change course.")
    let mecBallon04 = Node(text: "But because his passion for computing was too great, he began to study on his own, and later discovered that it was possible to mix mechanics with computing and work with machine automation.")
    let mecBallon05 = Node(text: "At the university he was in, there was not much incentive for automation, but there was a vacancy to study automation in Canada. Going away would mean staying away from his family, his girlfriend and his friends, but also finally really studying what he love.")
    // If Stay on Brazil
    let choice01mecBallon05 = Node(text: "He should stay in Brazil")
    let brBallon01 = Node(text: "For him, nothing was more important than his family, so he decided to stay close to them by giving up studying what he wanted.Today he works in the same company as her father, gets married, lives a happy life and occasionally plays with computers.")
    let brBallon02 = Node(text: "Our choices make all the difference in our lives!")
    let brBallon03 = Node(text: "This could have been my life if I had chosen not to switch course, but I did. Play again to try to figure out my true story.")
    
    // If decide go to Canada
    let choice02mecBallon05 = Node(text: "I would go to Canada")
    let cnBallon01 = Node(text: "Even though he would have to stay away from his family, he decided to risk and study automation in Canada, running after his dreams was the right thing to do at that moment.")
    let cnBallon02 = Node(text: "Today he is full of projects and very pleased with the results of his choices, now he is really working with what he likes.")
    let cnBallon03 = Node(text: "Our choices make all the difference in our lives!")
    let cnBallon04 = Node(text: "This could have been my life if I had chosen not to change course, but I changed. Play again to try to figure out my true story.")
    
    var storyPoint = Node(text: "")
    
    public func prepare() {
        // Set entry point for story
        storyPoint = ballon01
        
        // Link the ballons and choices
        ballon01.animation = "start_idle"
        ballon01.addNextNode(node: ballon02)
        ballon02.addNextNode(node: ballon03)
        ballon03.animation = "start_idle"
        ballon03.choices = [choice01ballon02, choice02ballon02]
        // Checkpoint 1
        ballon03.checkPoint = CheckPoint(node: ballon03, position: 1)
        choice01ballon02.nextNode = mecBallon03
        choice02ballon02.nextNode = compBallon01
        compBallon01.animation = "comp_idle"
        mecBallon03.animation = "mec_idle"
        
        mecBallon03.addNextNode(node: mecBallon04)
        mecBallon04.addNextNode(node: mecBallon05)
        mecBallon05.choices = [choice01mecBallon05, choice02mecBallon05]
        // If stay on Brazil
        choice01mecBallon05.addNextNode(node: brBallon01)
        brBallon01.animation = "brazil_idle"
        brBallon01.addNextNode(node: brBallon02)
        brBallon02.addNextNode(node: brBallon03)
        // If decide go to Canda
        choice02mecBallon05.addNextNode(node: cnBallon01)
        cnBallon01.animation = "canada_idle"
        cnBallon01.addNextNode(node: cnBallon02)
        cnBallon02.addNextNode(node: cnBallon03)
        cnBallon03.addNextNode(node: cnBallon04)
        
        // Branch Comp
        compBallon01.addNextNode(node: compBallon02)
        compBallon02.animation = "comp_idle"
        compBallon02.choices = [choice01compBallon02, choice02compBallon02]
        // Checkpoint 2
        compBallon02.checkPoint = CheckPoint(node: compBallon02, position: 2)
        // If choose enter on Academy
        choice01compBallon02.addNextNode(node: acadBallon01)
        acadBallon01.animation = "academy_idle"
        acadBallon01.addNextNode(node: acadBallon02)
        acadBallon02.addNextNode(node: acadBallon03)
        acadBallon03.checkPoint = CheckPoint(node: acadBallon03, position: 3)
        acadBallon03.animation = "academy_idle"
        //Checkpoint 3
        acadBallon03.choices = [choice01acadBallon03, choice02acadBallon03]
        
        // If did not take risk
        choice01acadBallon03.addNextNode(node: calculatorBallon01)
        calculatorBallon01.animation = "create_calculator_idle"
        calculatorBallon01.addNextNode(node: calculatorBallon02)
        calculatorBallon02.addNextNode(node: calculatorBallon03)
        calculatorBallon03.addNextNode(node: calculatorBallon04)
        
        // If create a game
        choice02acadBallon03.addNextNode(node: gameBallon01)
        gameBallon01.animation = "create_games_idle"
        gameBallon01.addNextNode(node: gameBallon02)
        gameBallon02.addNextNode(node: gameBallon03)
        gameBallon03.addNextNode(node: gameBallon04)
        gameBallon04.choices = [choice01gameBallon04, choice02gameBallon04]
        gameBallon04.animation = "create_games_idle"
        // Checkpoint 4
        gameBallon04.checkPoint = CheckPoint(node: gameBallon04, position: 4)
        choice01gameBallon04.addNextNode(node: wwdc2019Ballon01)
        wwdc2019Ballon01.animation = "wwdc2019_idle"
        wwdc2019Ballon01.addNextNode(node: wwdc2019Ballon02)
        wwdc2019Ballon02.addNextNode(node: wwdc2019Ballon03)
        wwdc2019Ballon03.endLine = true
        choice02gameBallon04.addNextNode(node: wwdc2019Ballon01)
        
        // If did not enter on Academy
        choice02compBallon02.addNextNode(node: notAcadBallon01)
        notAcadBallon01.animation = "not_academy_idle"
        notAcadBallon01.addNextNode(node: notAcadBallon02)
        notAcadBallon02.addNextNode(node: notAcadBallon03)
    }
    
    public func nextPoint() -> Bool {
        if (hasNext()) {
            storyPoint = storyPoint.nextNode!
            return true
        }
        return false
    }
    
    public func hasNext() -> Bool {
        return storyPoint.nextNode != nil
    }
}
