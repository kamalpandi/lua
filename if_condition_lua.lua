local function action(loves_coffee)
    if loves_coffee then
      print("Check out `ssh terminal.shop` - it's cool!")
    elseif loves_coffee ==1 then 
      print("Check out `ssh terminal.shop` - it's still cool!")
    end
  end
  
  -- "falsey": nil, false
  action() -- Same as: action(nil)
  action(false)
  
  -- Everything else is "truthy"
  action(true)
  action(0)
  action({})