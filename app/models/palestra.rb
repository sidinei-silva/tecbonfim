class Palestra < ApplicationRecord
  #has_one_attached :image
  validates :palestrante, :email_palestrante, :titulo_palestra, :desc_palestra, :hora_palestra, presence: true
  #validate :image_validations_custom

  # private
  # def image_validations_custom
  #   if image.attached? && !image.content_type.in?(%w(image/jpeg image/png image/jpg))
  #     errors.add(:image, 'Imagem tem que ser JPEG ou PNG.')
  #   elsif image.attached? == false
  #     errors.add(:image, 'Imagem obrigatoria')
  #   end
  # end
end
