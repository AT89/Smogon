#encoding: utf-8
#--
# Copyright(C) 2015 Giovanni Capuano <webmaster@giovannicapuano.net>
#
# This file is part of Smogon-API.
#
# Smogon-API is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Smogon-API is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Smogon-API.  If not, see <http://www.gnu.org/licenses/>.
#++

module Smogon
  class Moveset
    attr_accessor :pokemon, :name, :tier, :item, :ability, :nature, :moves, :evs

    def initialize
      @item    = []
      @ability = []
      @nature  = []
      @moves   = []
      @evs     = []
    end

    def to_s
      "Pokémon: #{@pokemon}\nSet: #{@name}\nItem: #{@item.join(' / ')}\nAbility: #{@ability.join(' / ')}\nNature: #{@nature.join(' / ')}\nMoves: #{''.tap { |s| @moves.each { |move| s << move.join(' / ') + ', '}}[0..-3]}\nEVs: #{@evs}"
    end
  end
end
