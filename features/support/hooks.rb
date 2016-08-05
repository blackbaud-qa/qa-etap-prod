Before do
  $loggedin ||= false
  if !$loggedin
    step "I navigate to Knight Rider"
    # step "I log out of eTap"
    $loggedin = true
  end
end

After do
  #step "I close the browser"
end
