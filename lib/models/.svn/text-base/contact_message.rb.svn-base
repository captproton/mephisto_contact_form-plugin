class ContactMessage < NonPersistentRecord
  column :id, :integer
  column :author, :string
  column :author_email, :string
  column :author_phone, :string
  column :subject, :string
  column :body, :string

  validates_presence_of :author, :author_email, :subject, :body

end
