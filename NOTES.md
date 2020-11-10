<!-- <%= form_for comment do |f| %>
<%= f.label :content  %>
<%= f.text_area :content %>
<%= f.collection_check_boxes :user_id, User.all, :id, :username %>
<%= f.submit %> 
<% end %>
</ul>  -- > 

<ul> 
<% @post.users.uniq.each do |user| %> 
<li><%= user.name %></li>
<% end %>
</ul>
