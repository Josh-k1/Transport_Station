device =
{
  canAccess = function()
    return true
  end,
  gui = {
     type ="ncurses",
     header =[[~workstation~]],
     backgroundColour = {0.29,0.69,0.77},
     highlightColour = {0.0,0.0,1.0},
     buttons = {
       {
         name = "move",
         onClick = function()

         end,
         subButtons = {
           {
             name = "move forward",
             onClick = function()
                Animator.SetBool("EndCarriage","activate",true)
             end,
           },
         },
         }
       }

     },
  }
