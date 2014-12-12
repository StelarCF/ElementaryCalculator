/* Copyright 2013 Vlad-Alexandru "StelarCF" Sănduleac and Vasilescu "RedArcher" Iulius
*
* This file is part of Elementary Calculator.
*
* Elementary Calculator is free software: you can redistribute it
* and/or modify it under the terms of the GNU General Public License as
* published by the Free Software Foundation, either version 3 of the
* License, or (at your option) any later version.
*
* Elementary Calculator is distributed in the hope that it will be
* useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
* Public License for more details.
*
* You should have received a copy of the GNU General Public License along
* with Elementary Calculator. If not, see http://www.gnu.org/licenses/.
*/

// Math symbols: × − + ÷ ± √ ∛

int main (string[] args) {
	Gtk.init (ref args);
	var window = new Gtk.Window ();
	window.title = "Hello World!";
	window.set_border_width (12);
	window.set_position (Gtk.WindowPosition.CENTER);
	window.set_default_size (350, 70);
	window.set_resizable(false);
	window.destroy.connect (Gtk.main_quit);
	var grid = new Gtk.Grid ();
	grid.orientation = Gtk.Orientation.HORIZONTAL;
	grid.row_spacing = 6;	
	grid.attach (new Gtk.Label ("Label 1"), 0, 0, 1, 1);
	var label = new Gtk.Label ("Label 2");
	var label2 = new Gtk.Label ("Hurrah");
	grid.attach (label, 0, 1, 1, 1);
	var button = new Gtk.Button.with_label ("Click me!");
	button.clicked.connect(() => {
		label.label = "Hello World";
		button.sensitive = false;
		grid.attach(label2, 1, 2, 2, 2);
	});
	grid.attach(button, 1, 0, 1, 2);
	window.add (grid);
	window.show_all ();
	Gtk.main();
	return 0;
}