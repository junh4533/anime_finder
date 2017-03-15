<% @result1_info = [] %>
  <% @user_anime.each do |data_type, data| %>
  <%  @result1_info << data[0] %>
  <% puts data[0] %>
  <% end %>
  <% test = "hi" %>
  
  <input type='hidden' name="hidden_info" value= "<% @result1_info %>" > 