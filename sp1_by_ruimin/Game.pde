
import java.util.Random;

class Game
{
  private Random rnd;
  private final int width;
  private final int height;
  private int[][] board;
  private Keys keys;
  private int playerLife;
  private int playerPoint;
  private int player2Point;
  private int player2Life;
  private Dot player;
  private Dot player2;
  private Dot[] enemies;
  private Dot[] enemies2;
  private Dot[] foods;
  private int playerWin;
  private int player2Win;


  Game(int width, int height, int numberOfEnemies, int numberOfFood)
  {
    if (width < 10 || height < 10)
    {
      throw new IllegalArgumentException("Width and height must be at least 10");
    }
    if (numberOfEnemies < 0)
    {
      throw new IllegalArgumentException("Number of enemies must be positive");
    } 
    if (numberOfFood < 0)
    {
      throw new IllegalArgumentException("Number of foods must be positive");
    } 
    this.rnd = new Random();
    this.board = new int[width][height];
    this.width = width;
    this.height = height;
    keys = new Keys();
    player = new Dot(0, 0, width-1, height-1);
    player2= new Dot(width-1, 0, width-1, height-1);
    enemies = new Dot[numberOfEnemies];
    enemies2 = new Dot[numberOfEnemies];
    for (int i = 0; i < numberOfEnemies; ++i)
    {
      enemies[i] = new Dot(width-1, height-1, width-1, height-1);
    }

    for (int i = 0; i < numberOfEnemies; ++i)
    {
      enemies2[i] = new Dot(0, height-1, width-1, height-1);
    }
    foods=new Dot[numberOfFood];
    for (int i=0; i<numberOfFood; ++i) {
      foods[i]=new Dot(width/2, height-1, width-1, height-1);
    }
    this.playerLife = 100;
    this.playerPoint =0;
    this.player2Life=100;
    this.player2Point = 0;
    this.playerWin=0;
    this.player2Win=0;
  }

  public int getWidth()
  {
    return width;
  }

  public int getHeight()
  {
    return height;
  }

  public int getPlayerLife()
  {
    return playerLife;
  }
  public int getPlayer2Life()
  {
    return player2Life;
  }
  public int getPlayerPoint()
  {
    return playerPoint;
  }
  public int getPlayer2Point()
  {
    return player2Point;
  }
  public int getPlayerWin()
  {
    return playerWin;
  }
  public int getPlayer2Win()
  {
    return player2Win;
  }
  public void onKeyPressed(char ch)
  {
    keys.onKeyPressed(ch);
  }

  public void onKeyReleased(char ch)
  {
    keys.onKeyReleased(ch);
  }

  public void update()
  {
    updatePlayer();
    updatePlayer2();
    updateEnemies();
    updateEnemies2();
    updateFoods();
    checkForCollisions();
    clearBoard();
    populateBoard();
  }



  public int[][] getBoard()
  {
    //ToDo: Defensive copy?
    return board;
  }

  private void clearBoard()
  {
    for (int y = 0; y < height; ++y)
    {
      for (int x = 0; x < width; ++x)
      {
        board[x][y]=0;
      }
    }
  }

  private void updatePlayer()
  {
    //Update player
    if (keys.wDown() && !keys.sDown())
    {
      player.moveUp();
    }
    if (keys.aDown() && !keys.dDown())
    {
      player.moveLeft();
    }
    if (keys.sDown() && !keys.wDown())
    {
      player.moveDown();
    }
    if (keys.dDown() && !keys.aDown())
    {
      player.moveRight();
    }
  }

  private void updatePlayer2()
  {
    //Update player2
    if (keys.iDown() && !keys.kDown())
    {
      player2.moveUp();
    }
    if (keys.jDown() && !keys.lDown())
    {
      player2.moveLeft();
    }
    if (keys.kDown() && !keys.iDown())
    {
      player2.moveDown();
    }
    if (keys.lDown() && !keys.jDown())
    {
      player2.moveRight();
    }
  }


  private void updateEnemies()
  {
    for (int i = 0; i < enemies.length; ++i)
    {
      //Should we follow or move randomly?
      //2 out of 3 we will follow..
      if (rnd.nextInt(3) < 2)
      {
        //We follow
        int dx = player.getX() - enemies[i].getX();
        int dy = player.getY() - enemies[i].getY();
        if (abs(dx) > abs(dy))
        {
          if (dx > 0)
          {
            //Player is to the right
            enemies[i].moveRight();
          } else
          {
            //Player is to the left
            enemies[i].moveLeft();
          }
        } else if (dy > 0)
        {
          //Player is down;
          enemies[i].moveDown();
        } else
        {//Player is up;
          enemies[i].moveUp();
        }
      } else
      {
        //We move randomly
        int move = rnd.nextInt(4);
        if (move == 0)
        {
          //Move right
          enemies[i].moveRight();
        } else if (move == 1)
        {
          //Move left
          enemies[i].moveLeft();
        } else if (move == 2)
        {
          //Move up
          enemies[i].moveUp();
        } else if (move == 3)
        {
          //Move down
          enemies[i].moveDown();
        }
      }
    }
  }

  private void updateEnemies2()
  {
    for (int i = 0; i < enemies.length; ++i)
    {
      //Should we follow or move randomly?
      //2 out of 3 we will follow..
      if (rnd.nextInt(3) < 2)
      {
        //We follow
        int dx2 = player2.getX() - enemies2[i].getX();
        int dy2 = player2.getY() - enemies2[i].getY();
        if (abs(dx2) > abs(dy2))
        {
          if (dx2 > 0)
          {
            //Player is to the right
            enemies2[i].moveRight();
          } else
          {
            //Player is to the left
            enemies2[i].moveLeft();
          }
        } else if (dy2 > 0)
        {
          //Player is down;
          enemies2[i].moveDown();
        } else
        {//Player is up;
          enemies2[i].moveUp();
        }
      } else
      {
        //We move randomly
        int move = rnd.nextInt(4);
        if (move == 0)
        {
          //Move right
          enemies2[i].moveRight();
        } else if (move == 1)
        {
          //Move left
          enemies2[i].moveLeft();
        } else if (move == 2)
        {
          //Move up
          enemies2[i].moveUp();
        } else if (move == 3)
        {
          //Move down
          enemies2[i].moveDown();
        }
      }
    }
  }

  private void updateFoods()
  {
    for (int i = 0; i < foods.length; ++i)
    {
      //Should we follow or move randomly?
      //2 out of 3 we will follow..
      if (rnd.nextInt(3) < 2)
      {
        //We follow
        int dx = player.getX() - foods[i].getX();
        int dy = player.getY() - foods[i].getY();
        int dx2 = player2.getX() -foods[i].getX();
        int dy2 = player2.getX() - foods[i].getX();
        float ds= dx*dx+dy*dy;
        float ds2 = dx2*dx2+dy2*dy2;
        if (ds2>=ds) { //closer to player1 

          if (abs(dx) > abs(dy))
          {
            if (dx > 0)
            {
              //Player is to the right
              foods[i].moveLeft();
            } else
            {
              //Player is to the left
              foods[i].moveRight();
            }
          } else if (dy > 0)
          {
            //Player is down;
            foods[i].moveUp();
          } else
          {//Player is up;
            foods[i].moveDown();
          }
        }// end oa closer to player1


        if (ds2<ds) { // closer to player2

          if (abs(dx2) > abs(dy2))
          {
            if (dx2 > 0)
            {
              //Player is to the right
              foods[i].moveLeft();
            } else
            {
              //Player is to the left
              foods[i].moveRight();
            }
          } else if (dy2 > 0)
          {
            //Player is down;
            foods[i].moveUp();
          } else
          {//Player is up;
            foods[i].moveDown();
          }
        }// end oa closer to player2
      } else
      {
        //We move randomly
        int move = rnd.nextInt(4);
        if (move == 0)
        {
          //Move right
          foods[i].moveRight();
        } else if (move == 1)
        {
          //Move left
          foods[i].moveLeft();
        } else if (move == 2)
        {
          //Move up
          foods[i].moveUp();
        } else if (move == 3)
        {
          //Move down
          foods[i].moveDown();
        }
      }
    }
  }


  private void populateBoard()
  {
    //Insert player
    board[player.getX()][player.getY()] = 1;
    board[player2.getX()][player2.getY()]=4;
    //Insert enemies
    for (int i = 0; i < enemies.length; ++i)
    {
      board[enemies[i].getX()][enemies[i].getY()] = 2;
    }
    for (int i = 0; i < enemies.length; ++i)
    {
      board[enemies2[i].getX()][enemies2[i].getY()] = 2;
    }
    // insert foods
    for (int i=0; i< foods.length; ++i)
    {
      board[foods[i].getX()][foods[i].getY()] =3;
    }
  }

  private void checkForCollisions()
  {
    //Check enemy collisions
    for (int i = 0; i < enemies.length; ++i)
    {
      if (enemies[i].getX() == player.getX() && enemies[i].getY() == player.getY())
      {
        //We have a collision
        --playerLife;
      }
    }
    //Check enemy 2 collisions
    for (int i = 0; i < enemies.length; ++i)
    {
      if (enemies2[i].getX() == player.getX() && enemies2[i].getY() == player.getY())
      {
        //We have a collision
        --playerLife;
      }
    }
    //Check enemy collisions with player2
    for (int i = 0; i < enemies.length; ++i)
    {
      if (enemies[i].getX() == player2.getX() && enemies[i].getY() == player2.getY())
      {
        //We have a collision
        --player2Life;
      }
    }
    //Check enemy2 collisions with player2
    for (int i = 0; i < enemies.length; ++i)
    {
      if (enemies2[i].getX() == player2.getX() && enemies2[i].getY() == player2.getY())
      {
        //We have a collision
        --player2Life;
      }
    }
    for (int i = 0; i < foods.length; ++i)
    {
      if (foods[i].getX() == player2.getX() && foods[i].getY() == player2.getY())
      {
        //We have a collision
        ++player2Point;
      }
    }
    for (int i=0; i<foods.length; ++i)
    {
      if (foods[i].getX() == player.getX() && foods[i].getY() == player.getY())
        ++playerPoint;
    }
  }

  // check win
  public boolean playerWon() 
  {
    if (getPlayer2Life()<0 || getPlayerPoint()>100) {
      return true;
    } else {
      return false;
    }
  }


  public boolean player2Won() { 
    if (getPlayer2Point()>100 ||  getPlayerLife()<0) 
    {
      return true;
    } else {
      return false;
    }
  }

void gameOver() {
  if (playerWon())
  {
    playerWin++;
    noLoop();
        textSize(100);
  text("GAME OVER!",300,400);
  }

  if (player2Won())
  {
    player2Win++;
    noLoop();
        textSize(100);
  text("GAME OVER!",300,400);
  }
  
}

  // finish check win
}
