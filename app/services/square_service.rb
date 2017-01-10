class SquareService
  # SquareService.new(home: 'h', away: 'a').build
  def initialize(args = {})
    @home = args[:home]
    @away = args[:away]
  end

  def build
    raise 'No home team' unless @home
    raise 'No away team' unless @away
    sq = nil
    Square.transaction do
      sq = Square.new(home: @home, away: @away)
      11.times do |x|
        11.times do |y|
          sq.square_boxes.build(x: x, y: y)
        end
      end
      sq.save!
    end
    sq
  end
end